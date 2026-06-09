import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/home/presentation/helpers/home_helpers.dart';
import 'package:patient_portal/feature/home/presentation/widgets/ad_banner.dart';
import 'package:patient_portal/feature/home/presentation/widgets/arrow_forward_button.dart';
import 'package:patient_portal/feature/home/presentation/widgets/documents_tile.dart';
import 'package:patient_portal/feature/home/presentation/widgets/members_tile.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_tile.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/dimens.dart';
import 'package:patient_portal/resources/urls.dart';
import 'package:patient_portal/route/route_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeHelpers.packageAdPositionNotifier.value = 0;
    CarouselSliderController pkgCrouselContoller = CarouselSliderController();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: state.isDataFetching
              ? Center(
                  child: LayoutBuilder(
                    builder: (context, constraints) => Center(
                      child: Image.asset(
                        'assets/gif_images/Ripple-0 2.gif',
                        width: constraints.maxWidth * .3,
                      ),
                    ),
                  ),
                )
              : state.isDataFetchingFailed
              ? Center(
                  child: Text(
                    state.error.message,
                    style: AppTextStyles.largeRobotoNormal,
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Dimens.constPadding,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            state.homeData.ads.isEmpty
                                ? const SizedBox()
                                : CarouselSlider.builder(
                                    itemCount: state.homeData.ads.length,
                                    itemBuilder: (context, index, realIndex) =>
                                        AdBanner(
                                          adBanner: state.homeData.ads[index],
                                          onPressed: () {},
                                        ),
                                    options: CarouselOptions(
                                      autoPlay: true,
                                      enlargeCenterPage: true,
                                      viewportFraction: 1,
                                      aspectRatio: 2.58,
                                    ),
                                  ),
                            Dimens.constHeight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Find Specialist',
                                  style:
                                      AppTextStyles.subHeaddingSemiBoldRoboto,
                                ),
                                ArrowForwardButton(
                                  bagroundColor: AppColors.lightGray,
                                  iconColor: AppColors.black,
                                  onPressed: () {
                                    MainScreenHelpers.mainScreenNotifier.value =
                                        2;
                                  },
                                ),
                              ],
                            ),
                            const Text(
                              'Consult top doctors online for any health concern',
                              style: AppTextStyles.bodyTextInter,
                            ),
                            const SizedBox(height: 10),
                            state.homeData.topSpecialities.isEmpty
                                ? const SizedBox()
                                : GridView.builder(
                                    shrinkWrap: true,
                                    itemCount:
                                        state.homeData.topSpecialities.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 10,
                                          childAspectRatio: 1.45,
                                          crossAxisCount: 4,
                                        ),
                                    itemBuilder: (context, index) =>
                                        SpecilityTile(
                                          speciality: state
                                              .homeData
                                              .topSpecialities[index],
                                        ),
                                  ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 6,
                        color: AppColors.lightGray,
                        width: double.infinity,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Dimens.constPadding,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Medical Insurance',
                                  style:
                                      AppTextStyles.subHeaddingSemiBoldRoboto,
                                ),
                                ArrowForwardButton(
                                  bagroundColor: AppColors.lightGray,
                                  iconColor: AppColors.black,
                                  onPressed: () {
                                    if (state
                                        .homeData
                                        .topInsurances
                                        .isNotEmpty) {
                                      Navigator.of(context).pushNamed(
                                        RouteConstants.medicalInsuranceScreen,
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                            const Text(
                              'We are providing following Medical insurance',
                              style: AppTextStyles.bodyTextInter,
                            ),
                            const SizedBox(height: 10),
                            state.homeData.topInsurances.isEmpty
                                ? const SizedBox()
                                : GridView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 6,
                                          crossAxisSpacing: 10,
                                        ),
                                    itemBuilder: (context, index) => CachedNetworkImage(
                                      imageUrl:
                                          '${ConstantUrls.insuranceImagePath}/${state.homeData.topInsurances[index].idInsurance}/${state.homeData.topInsurances[index].img}',
                                      fit: BoxFit.fill,
                                      fadeInDuration: const Duration(
                                        seconds: 0,
                                      ),
                                      fadeOutDuration: const Duration(
                                        seconds: 0,
                                      ),
                                      errorWidget: (context, url, error) =>
                                          Image.asset(
                                            'assets/images/image_loading_failed_image.png',
                                            fit: BoxFit.fill,
                                          ),
                                    ),
                                    itemCount:
                                        state.homeData.topInsurances.length,
                                  ),
                            const SizedBox(height: 7),
                          ],
                        ),
                      ),
                      state.homeData.topPackages.isEmpty
                          ? const SizedBox()
                          : Container(
                              color: AppColors.blue,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Best Health Packages',
                                              style: AppTextStyles
                                                  .subHeaddingSemiBoldRoboto
                                                  .copyWith(
                                                    color: AppColors.white,
                                                  ),
                                            ),
                                            ArrowForwardButton(
                                              bagroundColor:
                                                  AppColors.lightBlue,
                                              iconColor: AppColors.lightGray,
                                              onPressed: () {
                                                Navigator.of(context).pushNamed(
                                                  RouteConstants.labScreen,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Explore the Best health Offers',
                                          style: AppTextStyles.bodyTextInter
                                              .copyWith(
                                                color: AppColors.lightGray,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CarouselSlider.builder(
                                    carouselController: pkgCrouselContoller,
                                    itemCount:
                                        state.homeData.topPackages.length,
                                    itemBuilder: (context, index, realIndex) =>
                                        AdBanner(
                                          adBanner:
                                              state.homeData.topPackages[index],
                                          onPressed: () {},
                                        ),
                                    options: CarouselOptions(
                                      onPageChanged: (index, reason) {
                                        HomeHelpers
                                                .packageAdPositionNotifier
                                                .value =
                                            index;
                                      },
                                      enlargeCenterPage: true,
                                      enableInfiniteScroll: false,
                                      autoPlay: true,
                                      viewportFraction: .8,
                                      aspectRatio: 2.5,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      top: 6,
                                    ),
                                    child: ValueListenableBuilder<int>(
                                      valueListenable:
                                          HomeHelpers.packageAdPositionNotifier,
                                      builder: (context, value, child) =>
                                          AnimatedSmoothIndicator(
                                            onDotClicked: (index) {
                                              pkgCrouselContoller.animateToPage(
                                                index,
                                              );
                                              HomeHelpers
                                                      .packageAdPositionNotifier
                                                      .value =
                                                  index;
                                            },
                                            effect: ScaleEffect(
                                              spacing: 2,
                                              activeDotColor: AppColors.white,
                                              paintStyle: PaintingStyle.fill,
                                              dotWidth: 4,
                                              dotHeight: 4,
                                              dotColor: AppColors.white
                                                  .withValues(alpha: .39),
                                              activePaintStyle:
                                                  PaintingStyle.fill,
                                            ),
                                            activeIndex: value,
                                            count: state
                                                .homeData
                                                .topPackages
                                                .length,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                ],
                              ),
                            ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          childAspectRatio: 1.42,
                          crossAxisSpacing: 15,
                          children: const [MembersTile(), DocumentsTile()],
                        ),
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
