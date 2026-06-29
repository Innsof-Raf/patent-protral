import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/home/presentation/helpers/home_helpers.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_banner_carousel.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_doctors_section.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_insurance_section.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_packages_section.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_quick_actions_section.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_specialities_section.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

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
          return const Scaffold(body: CommonLoadingView());
        }

        if (state.isDataFetchingFailed) {
          return Scaffold(
            body: CommonErrorView(
              title: AppStaticTexts.unableToLoadHome,
              message: state.error.message,
              onRetry: () {
                final token =
                    context.read<UserBloc>().state.user?.accessToken ?? '';
                context.read<HomeBloc>().add(
                  GetHomeData(token: token, idBusunit: 3),
                );
              },
            ),
          );
        }

        final theme = Theme.of(context);
        final homeData = state.homeData;

        return Scaffold(
          backgroundColor: theme.colorScheme.surface,
          body: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  theme.colorScheme.primaryContainer.withValues(alpha: .35),
                  theme.colorScheme.surface,
                  theme.colorScheme.surface,
                ],
                stops: const [0, .18, .45],
              ),
            ),
            child: RefreshIndicator(
              onRefresh: () async {
                final token =
                    context.read<UserBloc>().state.user?.accessToken ?? '';
                context.read<HomeBloc>().add(
                  GetHomeData(token: token, idBusunit: 3),
                );
              },
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(14, 14, 14, 104),
                children: [
                  HomeBannerCarousel(
                    banners: homeData.ads
                        .where((e) => e.bannerType == 'HOMEBANNER')
                        .toList(),
                  ),
                  if (homeData.ads.any((e) => e.bannerType == 'HOMEBANNER'))
                    const Gap(22),
                  HomeSpecialitiesSection(
                    specialities: homeData.topSpecialities,
                  ),
                  if (homeData.topSpecialities.isNotEmpty) const Gap(24),
                  HomeInsuranceSection(insurances: homeData.topInsurances),
                  if (homeData.topInsurances.isNotEmpty) const Gap(24),
                  HomeDoctorsSection(doctors: homeData.topDoctors),
                  if (homeData.topDoctors.isNotEmpty) const Gap(24),
                  HomePackagesSection(
                    packages: homeData.topPackages,
                    carouselController: packageCarouselController,
                  ),
                  if (homeData.topPackages.isNotEmpty) const Gap(24),
                  const HomeQuickActionsSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
