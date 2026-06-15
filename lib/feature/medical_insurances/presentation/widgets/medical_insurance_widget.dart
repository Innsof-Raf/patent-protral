import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/urls.dart';

class MedicalInsuranceWidget extends StatelessWidget {
  final int idInsurance;
  const MedicalInsuranceWidget({
    super.key,
    required this.image,
    required this.idInsurance,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: '${ConstantUrls.insuranceImagePath}/$idInsurance/$image',
      fit: BoxFit.contain,
      fadeInDuration: const Duration(seconds: 0),
      fadeOutDuration: const Duration(seconds: 0),
      errorWidget: (context, url, error) => Image.asset(
        Assets.images.imageLoadingFailedImage.path,
        fit: BoxFit.contain,
      ),
    );
  }
}
