import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality_model.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/route_constants.dart';

class SpecilityTile extends StatelessWidget {
  final SpecialityModel speciality;
  const SpecilityTile({super.key, required this.speciality});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(3),
            foregroundColor: AppColors.textFormFIeldBagroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(
                color: AppColors.textFormFIeldBagroundColor,
              ),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(
              RouteConstants.doctorsScreen,
              arguments: {'id_speciality': speciality.idSpeciality},
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CachedNetworkImage(
                imageUrl:
                    '${ConstantUrls.specilityImageUrl}/${speciality.idSpeciality}/${speciality.specialityImage}',
                fadeInDuration: const Duration(seconds: 0),
                height: constraints.maxHeight * .39,
                errorWidget: (context, url, error) {
                  return Image.asset(
                    'assets/images/image_loading_failed_image.png',
                    height: constraints.maxHeight * .39,
                  );
                },
                progressIndicatorBuilder: (context, url, progress) {
                  return const SizedBox();
                },
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  speciality.specialityName,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.bodySemiBoldRoboto,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
