import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart'
    as home_entity;
import 'package:patient_portal/feature/home/presentation/widgets/ad_banner.dart';

class HomeBannerCarousel extends StatelessWidget {
  const HomeBannerCarousel({required this.banners, super.key});

  final List<home_entity.AdBanner> banners;

  @override
  Widget build(BuildContext context) {
    if (banners.isEmpty) return const SizedBox.shrink();

    return CarouselSlider.builder(
      itemCount: banners.length,
      itemBuilder: (context, index, realIndex) =>
          AdBanner(adBanner: banners[index], onPressed: () {}),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        enlargeFactor: .14,
        viewportFraction: 1,
        aspectRatio: 2.55,
      ),
    );
  }
}
