import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../resources/urls.dart';

class MedicalInsuranceWidget extends StatelessWidget {
  final int idInsurance;
  const MedicalInsuranceWidget(
      {Key? key, required this.image, required this.idInsurance})
      : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: '${ConstantUrls.insuranceImagePath}/$idInsurance/$image',
      fit: BoxFit.contain,
      fadeInDuration: const Duration(seconds: 0),
      fadeOutDuration: const Duration(seconds: 0),
      errorWidget: (context, url, error) => Image.asset(
        'assets/images/image_loading_failed_image.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
