import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/new_listing/shared/publishing/listing_publishing_details_section.dart';
import 'package:flutter/material.dart';

class HousesForSaleStep2Body extends StatelessWidget {
  const HousesForSaleStep2Body({
    super.key,
    required this.formKey,
    required this.showRequiredErrors,
    required this.isSubmitting,
    required this.onPrevious,
    required this.onPostNow,
    required this.pageBg,
    this.premadeTitle,
  });

  final GlobalKey<FormState> formKey;
  final bool showRequiredErrors;
  final bool isSubmitting;
  final VoidCallback onPrevious;
  final VoidCallback onPostNow;
  final Color pageBg;
  final String? premadeTitle;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: isSubmitting
                ? const NeverScrollableScrollPhysics()
                : const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.only(
              bottom: context.spaceMedium + context.viewInsets.bottom,
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListingPublishingDetailsSection(
                    pageBg: pageBg,
                    showRequiredErrors: showRequiredErrors,
                    premadeTitle: premadeTitle,
                  ),
                  SizedBox(height: context.spaceSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: isSubmitting ? null : onPrevious,
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(
                            context.screenWidth * 0.35,
                            context.screenHeight * 0.05,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: context.paddingMedium * 1.02,
                            vertical: context.spaceSmall,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: BorderSide(
                            color: scheme.outline.withValues(alpha: 0.85),
                          ),
                          foregroundColor: scheme.onSurface,
                        ),
                        child: Text(
                          'Previous',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(width: context.paddingMedium * 1.15),
                      FilledButton(
                        onPressed: isSubmitting ? null : onPostNow,
                        style: FilledButton.styleFrom(
                          minimumSize: Size(
                            context.screenWidth * 0.35,
                            context.screenHeight * 0.05,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: context.paddingMedium * 1.02,
                            vertical: context.spaceSmall,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Post now',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: scheme.onPrimary,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (isSubmitting)
            Positioned.fill(
              child: ColoredBox(
                color: scheme.surface.withValues(alpha: 0.55),
                child: Center(
                  child: SizedBox(
                    width: 36,
                    height: 36,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: scheme.primary,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
