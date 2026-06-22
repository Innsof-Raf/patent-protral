import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart'
    as home_entity;
import 'package:patient_portal/feature/home/presentation/helpers/home_helpers.dart';
import 'package:patient_portal/feature/home/presentation/widgets/ad_banner.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_section_header.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePackagesSection extends StatelessWidget {
  const HomePackagesSection({
    required this.packages,
    required this.carouselController,
    super.key,
  });

  final List<home_entity.AdBanner> packages;
  final CarouselSliderController carouselController;

  @override
  Widget build(BuildContext context) {
    if (packages.isEmpty) return const SizedBox.shrink();

    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 12),
            child: HomeSectionHeader(
              title: AppStaticTexts.bestHealthPackages,
              subtitle: AppStaticTexts.bestHealthPackagesSubtitle,
              inverse: true,
              actionTooltip: AppStaticTexts.viewPackages,
              onViewAll: () {
                context.router.root.push(const LabRoute());
              },
            ),
          ),
          CarouselSlider.builder(
            carouselController: carouselController,
            itemCount: packages.length,
            itemBuilder: (context, index, realIndex) =>
                AdBanner(adBanner: packages[index], onPressed: () {}),
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                HomeHelpers.packageAdPositionNotifier.value = index;
              },
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: true,
              viewportFraction: .84,
              aspectRatio: 2.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 10, 18, 18),
            child: ValueListenableBuilder<int>(
              valueListenable: HomeHelpers.packageAdPositionNotifier,
              builder: (context, value, child) => AnimatedSmoothIndicator(
                onDotClicked: (index) {
                  carouselController.animateToPage(index);
                  HomeHelpers.packageAdPositionNotifier.value = index;
                },
                effect: ExpandingDotsEffect(
                  spacing: 5,
                  activeDotColor: theme.colorScheme.onPrimary,
                  dotWidth: 6,
                  dotHeight: 6,
                  expansionFactor: 3,
                  dotColor: theme.colorScheme.onPrimary.withValues(alpha: .36),
                ),
                activeIndex: value,
                count: packages.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
