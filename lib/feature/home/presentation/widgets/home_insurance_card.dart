import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

class HomeInsuranceCard extends StatelessWidget {
  const HomeInsuranceCard({required this.insurance, super.key});

  final InsuranceModel insurance;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: CachedNetworkImage(
          imageUrl:
              '${ConstantUrls.insuranceImagePath}/${insurance.idInsurance}/${insurance.img}',
          fit: BoxFit.contain,
          fadeInDuration: Duration.zero,
          fadeOutDuration: Duration.zero,
          errorWidget: (context, url, error) => Image.asset(
            Assets.images.imageLoadingFailedImage.path,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
