import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_auth_card.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_background_carousel.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_otp_generation_section.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_otp_verification_section.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_with_password_section.dart';

final List<String> bgImages = [
  Assets.images.loginBgSlide1.path,
  Assets.images.loginBgSlide2.path,
  Assets.images.loginBgSlide3.path,
  Assets.images.loginBgSlide4.path,
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
      valueListenable: LoginScreenHelpers.loginSectionNotifier,
      builder: (context, value, child) {
        return PopScope(
          canPop: value == 0,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) return;
            if (value == 1) {
              LoginScreenHelpers.loginSectionNotifier.value = 0;
            } else if (value == 2) {
              LoginScreenHelpers.loginSectionNotifier.value = 1;
            }
          },
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark,
              systemNavigationBarColor: theme.colorScheme.surface,
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              body: Stack(
                children: [
                  Positioned.fill(
                    child: LoginBackgroundCarousel(
                      images: bgImages,
                      controller: bgImageCarouselController,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
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
      child: LoginAuthCard(
        showElevation: sectionIndex != 2,
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
              child: SlideTransition(position: slideAnimation, child: child),
            );
          },
          child: switch (sectionIndex) {
            0 => const LoginOtpGenerationSection(key: ValueKey<int>(0)),
            2 => const LoginWithPasswordSection(key: ValueKey<int>(2)),
            _ => const LoginOtpVerificationSection(key: ValueKey<int>(1)),
          },
        ),
      ),
    );
  }
}
