import 'package:flutter/material.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_brand_header.dart';

class LoginAuthCard extends StatelessWidget {
  const LoginAuthCard({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 22, 24, 24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(34)),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: .12),
            blurRadius: 28,
            offset: const Offset(0, -12),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const LoginBrandHeader(),
            const SizedBox(height: 22),
            child,
          ],
        ),
      ),
    );
  }
}
