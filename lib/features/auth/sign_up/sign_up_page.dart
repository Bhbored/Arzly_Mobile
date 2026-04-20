import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/auth/sign_up/widgets/sign_up_footer.dart';
import 'package:arzly/features/auth/sign_up/widgets/sign_up_form.dart';
import 'package:arzly/features/auth/sign_up/widgets/sign_up_header.dart';
import 'package:arzly/features/auth/widgets/social_login_section.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          // Ambient Background Elements (Same as Login)
          Positioned(
            top: -context.screenHeight * 0.1,
            left: -context.screenWidth * 0.2,
            child: Container(
              width: context.screenWidth * 0.8,
              height: context.screenWidth * 0.8,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -context.screenHeight * 0.1,
            right: -context.screenWidth * 0.2,
            child: Container(
              width: context.screenWidth,
              height: context.screenWidth,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Main Content
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: context.paddingLarge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: context.spaceLarge),
                    const SignUpHeader(),
                    SizedBox(height: context.spaceLarge),
                    Container(
                      padding: EdgeInsets.all(context.paddingLarge),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerLowest,
                        borderRadius: BorderRadius.circular(context.borderRadiusLarge),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.04),
                            blurRadius: 32,
                            offset: const Offset(0, 12),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Join the Arzly community today. Connect, share, and discover.',
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                          ),
                          SizedBox(height: context.spaceLarge),
                          const SignUpForm(),
                          SizedBox(height: context.spaceLarge),
                          const SocialLoginSection(),
                        ],
                      ),
                    ),
                    SizedBox(height: context.spaceLarge),
                    const SignUpFooter(),
                    SizedBox(height: context.spaceLarge),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
