import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/home/presentation/helpers/home_helpers.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_banner_carousel.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_insurance_section.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_packages_section.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_quick_actions_section.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_specialities_section.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_state_view.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeHelpers.packageAdPositionNotifier.value = 0;
    final packageCarouselController = CarouselSliderController();

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isDataFetching) {
          return const Scaffold(body: HomeLoadingView());
        }

        if (state.isDataFetchingFailed) {
          return Scaffold(body: HomeErrorView(message: state.error.message));
        }

        final theme = Theme.of(context);
        final homeData = state.homeData;

        return Scaffold(
          backgroundColor: theme.colorScheme.surface,
          body: ListView(
            padding: const EdgeInsets.fromLTRB(14, 14, 14, 104),
            children: [
              HomeBannerCarousel(banners: homeData.ads),
              if (homeData.ads.isNotEmpty) const SizedBox(height: 22),
              HomeSpecialitiesSection(specialities: homeData.topSpecialities),
              if (homeData.topSpecialities.isNotEmpty)
                const SizedBox(height: 24),
              HomeInsuranceSection(insurances: homeData.topInsurances),
              if (homeData.topInsurances.isNotEmpty) const SizedBox(height: 24),
              HomePackagesSection(
                packages: homeData.topPackages,
                carouselController: packageCarouselController,
              ),
              if (homeData.topPackages.isNotEmpty) const SizedBox(height: 24),
              const HomeQuickActionsSection(),
            ],
          ),
        );
      },
    );
  }
}
