import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginBackgroundCarousel extends StatelessWidget {
  const LoginBackgroundCarousel({
    required this.images,
    required this.controller,
    super.key,
  });

  final List<String> images;
  final CarouselSliderController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CarouselSlider.builder(
          carouselController: controller,
          itemCount: images.length,
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              LoginScreenHelpers.backgroundImageNotifier.value = index;
            },
            height: double.infinity,
            viewportFraction: 1,
            autoPlay: true,
          ),
          itemBuilder: (context, index, realIndex) {
            return Image.asset(
              images[index],
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            );
          },
        ),
      ],
    );
  }
}

class LoginCarouselIndicator extends StatelessWidget {
  const LoginCarouselIndicator({
    required this.controller,
    required this.count,
    super.key,
  });

  final CarouselSliderController controller;
  final int count;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ValueListenableBuilder<int>(
      valueListenable: LoginScreenHelpers.backgroundImageNotifier,
      builder: (context, index, _) => AnimatedSmoothIndicator(
        onDotClicked: controller.animateToPage,
        effect: ExpandingDotsEffect(
          activeDotColor: theme.colorScheme.onPrimary,
          dotColor: theme.colorScheme.onPrimary.withValues(alpha: .42),
          dotWidth: 8,
          dotHeight: 8,
          expansionFactor: 3,
          spacing: 7,
        ),
        activeIndex: index,
        count: count,
      ),
    );
  }
}
