import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';

class HomeInsuranceCard extends StatelessWidget {
  const HomeInsuranceCard({required this.insurance, super.key});

  final InsuranceModel insurance;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.surface,
            theme.colorScheme.primaryContainer.withValues(alpha: .14),
          ],
        ),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: .10),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withValues(alpha: .05),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: CachedNetworkImage(
          imageUrl:
              '${ConstantUrls.insuranceImagePath}/${insurance.idInsurance}/${insurance.img}',
          fit: BoxFit.contain,
          fadeInDuration: Duration.zero,
          fadeOutDuration: Duration.zero,
          placeholder: CommonNetworkImage.placeholder,
          errorWidget: CommonNetworkImage.errorWidget,
        ),
      ),
    );
  }
}
