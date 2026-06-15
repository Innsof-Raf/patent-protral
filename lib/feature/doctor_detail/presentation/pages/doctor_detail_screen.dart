import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/doctor_detail/presentation/widgets/doctor_detail_appbar.dart';

@RoutePage(name: 'DoctorDetailRoute')
class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DoctorDetailScreenAppbar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              width: double.infinity,
              color: AppColors.vilot,
              child: LayoutBuilder(
                builder: (context, constraints) => Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: -constraints.maxWidth * .08,
                      left: 0,
                      right: 0,
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.network(
                              'https://www.pinoytechnoguide.com/wp-content/uploads/2021/10/vivo-X70-sample-picture-person-normal-768x576.jpg',
                              width: constraints.maxWidth * .24,
                              height: constraints.maxWidth * .24,
                              fit: BoxFit.fill,
                              alignment: Alignment.centerLeft,
                              errorBuilder: (context, error, stackTrace) {
                                return CircleAvatar();
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height:
                                    constraints.maxWidth * .23 -
                                    constraints.maxWidth * .08,
                                child: Column(children: []),
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
                        const Text(
                          'Dr.Manu James',
                          style: AppTextStyles.xXXLargeBobotoSemiBold,
                        ),
                        Text(
                          'Internal Medicine',
                          style: AppTextStyles.largeRobotoNormal.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(flex: 4, child: SizedBox()),
        ],
      ),
    );
  }
}
