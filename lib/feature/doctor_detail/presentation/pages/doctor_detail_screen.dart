import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';

@RoutePage(name: 'DoctorDetailRoute')
class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CommonAppbar(
        title: context.lang.doctor,
        backgroundColor: AppColors.primaryCyanDark,
        foregroundColor: AppColors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.primaryCyanDark, AppColors.primaryCyan],
                ),
              ),
              child: Container(
                padding: const EdgeInsetsDirectional.only(
                  start: 10,
                  end: 10,
                  top: 10,
                ),
                width: double.infinity,
                child: LayoutBuilder(
                  builder: (context, constraints) => Stack(
                    clipBehavior: Clip.none,
                    children: [
                      PositionedDirectional(
                        bottom: -constraints.maxWidth * .08,
                        start: 0,
                        end: 0,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://www.pinoytechnoguide.com/wp-content/uploads/2021/10/vivo-X70-sample-picture-person-normal-768x576.jpg',
                                width: constraints.maxWidth * .24,
                                height: constraints.maxWidth * .24,
                                fit: BoxFit.fill,
                                alignment: Alignment.centerLeft,
                                placeholder: CommonNetworkImage.placeholder,
                                errorWidget: CommonNetworkImage.errorWidget,
                              ),
                            ),
                            const Gap(10),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height:
                                      constraints.maxWidth * .23 -
                                      constraints.maxWidth * .08,
                                  child: const Column(children: []),
                                ),
                                Container(height: constraints.maxWidth * .08),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr.Manu James',
                            style: AppTextStyles.xXLargeRobotoSemiBold.copyWith(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                          Text(
                            'Internal Medicine',
                            style: AppTextStyles.subHeadingSemiBoldRoboto
                                .copyWith(color: theme.colorScheme.onPrimary),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Expanded(flex: 4, child: SizedBox()),
        ],
      ),
    );
  }
}
