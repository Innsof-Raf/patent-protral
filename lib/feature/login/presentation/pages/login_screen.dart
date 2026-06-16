import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_auth_card.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_background_carousel.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_otp_generation_section.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_otp_verification_section.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_with_password_section.dart';

final List<String> bgImages = [
  Assets.images.loginBagroundImage.path,
  Assets.images.loginBagroundImage.path,
  Assets.images.loginBagroundImage.path,
  Assets.images.loginBagroundImage.path,
];

final CarouselSliderController bgImageCarouselController =
    CarouselSliderController();

@RoutePage(name: 'LoginRoute')
class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ValueListenableBuilder<int>(
      valueListenable: LoginScreenHelpers.loginSectionNotifer,
      builder: (context, value, child) {
        return PopScope(
          canPop: value == 0,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) return;
            if (value == 1) {
              LoginScreenHelpers.loginSectionNotifer.value = 0;
            } else if (value == 2) {
              LoginScreenHelpers.loginSectionNotifer.value = 1;
            }
          },
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarColor: AppColors.black,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark,
              systemNavigationBarColor: theme.colorScheme.surface,
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: theme.colorScheme.inverseSurface,
              body: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: MediaQuery.paddingOf(context).top,
                    right: 0,
                    bottom: 0,
                    child: LoginBackgroundCarousel(
                      images: bgImages,
                      controller: bgImageCarouselController,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: _LoginBottomPanel(sectionIndex: value),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _LoginBottomPanel extends StatelessWidget {
  const _LoginBottomPanel({required this.sectionIndex});

  final int sectionIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: LoginCarouselIndicator(
              controller: bgImageCarouselController,
              count: bgImages.length,
            ),
          ),
          const SizedBox(height: 18),
          LoginAuthCard(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 280),
              switchInCurve: Curves.easeOutCubic,
              switchOutCurve: Curves.easeInCubic,
              transitionBuilder: (child, animation) {
                final slideAnimation = Tween<Offset>(
                  begin: const Offset(.08, 0),
                  end: Offset.zero,
                ).animate(animation);

                return FadeTransition(
                  opacity: animation,
                  child: SlideTransition(
                    position: slideAnimation,
                    child: child,
                  ),
                );
              },
              child: switch (sectionIndex) {
                0 => const LoginOtpGenerationSection(key: ValueKey<int>(0)),
                2 => const LoginWithPasswordSection(key: ValueKey<int>(2)),
                _ => const LoginOtpVerificationSection(key: ValueKey<int>(1)),
              },
            ),
          ),
        ],
      ),
    );
  }
}
