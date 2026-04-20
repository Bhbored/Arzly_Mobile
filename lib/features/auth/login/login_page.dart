import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/auth/login/widgets/login_footer.dart';
import 'package:arzly/features/auth/login/widgets/login_form.dart';
import 'package:arzly/features/auth/login/widgets/login_header.dart';
import 'package:arzly/features/auth/widgets/social_login_section.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          // Ambient Background Elements
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
              child: const SizedBox.shrink(),
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
              child: const SizedBox.shrink(),
            ),
          ),
          
          // Main Content
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: context.paddingLarge),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: context.spaceLarge),
                    const LoginHeader(),
                    SizedBox(height: context.spaceExtraLarge),
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
                      child: const Column(
                        children: [
                          LoginForm(),
                          SizedBox(height: 32), // Fixed internal spacing is often acceptable, but can be dynamic too
                          SocialLoginSection(),
                        ],
                      ),
                    ),
                    SizedBox(height: context.spaceLarge),
                    const LoginFooter(),
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
