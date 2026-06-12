import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_otp_generation_section.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_otp_verification_section.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_with_password_section.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

List<String> bagroundImages = [
  'assets/images/login_baground_image.png',
  'assets/images/login_baground_image.png',
  'assets/images/login_baground_image.png',
  'assets/images/login_baground_image.png',
];
final CarouselSliderController bagroundImageCarouselController =
    CarouselSliderController();

@RoutePage(name: 'LoginRoute')
class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color(0xff030305),
            appBar: AppBar(
              backgroundColor: AppColors.transparent,
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: AppColors.transparent,
                statusBarIconBrightness: Brightness.light,
              ),
              elevation: 0,
            ),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 150),
                  child: CarouselSlider.builder(
                    carouselController: bagroundImageCarouselController,
                    itemCount: bagroundImages.length,
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        LoginScreenHelpers.bagroundImageNotifier.value = index;
                      },
                      height: double.infinity,
                      viewportFraction: 1,
                      autoPlay: true,
                    ),
                    itemBuilder: (context, index, realIndex) => Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/login_baground_image.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: LoginScreenHelpers.constPadding,
                        ),
                        child: ValueListenableBuilder(
                          valueListenable:
                              LoginScreenHelpers.bagroundImageNotifier,
                          builder: (context, index, _) =>
                              AnimatedSmoothIndicator(
                                onDotClicked: (index) {
                                  bagroundImageCarouselController.animateToPage(
                                    index,
                                  );
                                },
                                effect: const ScaleEffect(
                                  activeDotColor: AppColors.white,
                                  paintStyle: PaintingStyle.fill,
                                  dotWidth: 8,
                                  dotHeight: 8,
                                  scale: 2,
                                  dotColor: AppColors.white,
                                  activePaintStyle: PaintingStyle.stroke,
                                ),
                                activeIndex: index,
                                count: bagroundImages.length,
                              ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(
                          LoginScreenHelpers.constPadding,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(60),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Get Involved with',
                                  style:
                                      AppTextStyles.subHeaddingSemiBoldRoboto,
                                ),
                                Dimens.constWidth10,
                                Image.asset(
                                  'assets/logos/allevia_logo_gray.png',
                                  width: 92,
                                ),
                              ],
                            ),
                            LoginScreenHelpers.constHeiht20,
                            ValueListenableBuilder<int>(
                              valueListenable:
                                  LoginScreenHelpers.loginSectionNotifer,
                              builder: (context, value, child) =>
                                  AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 300),
                                    transitionBuilder: (child, animation) {
                                      const begin = Offset(1.0, 0.0);
                                      const end = Offset.zero;
                                      const curve = Curves.linear;

                                      var tween = Tween(
                                        begin: begin,
                                        end: end,
                                      ).chain(CurveTween(curve: curve));

                                      return SlideTransition(
                                        position: animation.drive(tween),
                                        child: child,
                                      );
                                    },
                                    child: value == 0
                                        ? const LoginOtpGenerationSection(
                                            key: ValueKey<int>(0),
                                          )
                                        : value == 2
                                        ? const LoginWithPasswordSection(
                                            ValueKey<int>(2),
                                          )
                                        : const LoginOtpVerificationSection(
                                            key: ValueKey<int>(1),
                                          ),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
