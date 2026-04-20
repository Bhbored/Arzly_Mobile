import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/auth/sign_up/widgets/trust_element.dart';
import 'package:arzly/features/auth/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthTextField(
          label: 'Full Name',
          hintText: 'Jane Doe',
          prefixIcon: Icons.person_outline,
          controller: _nameController,
        ),
        SizedBox(height: context.spaceMedium),
        AuthTextField(
          label: 'Email Address',
          hintText: 'jane@example.com',
          prefixIcon: Icons.mail_outline,
          controller: _emailController,
        ),
        SizedBox(height: context.spaceMedium),
        AuthTextField(
          label: 'Phone Number',
          hintText: '+1 (555) 000-0000',
          prefixIcon: Icons.phone_iphone,
          controller: _phoneController,
        ),
        SizedBox(height: context.spaceMedium),
        AuthTextField(
          label: 'Password',
          hintText: '••••••••',
          prefixIcon: Icons.lock_outline,
          isPassword: _obscurePassword,
          controller: _passwordController,
          suffixIcon: IconButton(
            icon: Icon(
              _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
              size: 20,
              color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
            ),
            onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
          ),
        ),
        SizedBox(height: context.spaceMedium),
        const TrustElement(),
        SizedBox(height: context.spaceLarge),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Create Account'),
        ),
      ],
    );
  }
}
