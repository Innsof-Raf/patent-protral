import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart'
    as home_entity;
import 'package:patient_portal/feature/home/presentation/helpers/home_helpers.dart';
import 'package:patient_portal/feature/home/presentation/widgets/ad_banner.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePromotionalSliderSection extends StatelessWidget {
  const HomePromotionalSliderSection({required this.banners, super.key});

  final List<home_entity.AdBanner> banners;

  @override
  Widget build(BuildContext context) {
    if (banners.isEmpty) return const SizedBox.shrink();

    final carouselController = CarouselSliderController();

    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: banners.length,
          itemBuilder: (context, index, realIndex) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: AdBanner(adBanner: banners[index], onPressed: () {}),
          ),
          options: CarouselOptions(
            height: 165,
            viewportFraction: 0.9,
            autoPlay: banners.length > 1,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              HomeHelpers.homeAdPositionNotifier.value = index;
            },
          ),
        ),
        const SizedBox(height: 12),
        ValueListenableBuilder<int>(
          valueListenable: HomeHelpers.homeAdPositionNotifier,
          builder: (context, value, child) => AnimatedSmoothIndicator(
            activeIndex: value,
            count: banners.length,
            onDotClicked: (index) {
              carouselController.animateToPage(index);
              HomeHelpers.homeAdPositionNotifier.value = index;
            },
            effect: const ExpandingDotsEffect(
              spacing: 4,
              expansionFactor: 4,
              dotWidth: 8,
              dotHeight: 4,
              activeDotColor: AppColors.primaryCyan,
              dotColor: AppColors.borderColor,
            ),
          ),
        ),
      ],
    );
  }
}
