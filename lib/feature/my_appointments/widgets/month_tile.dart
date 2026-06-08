import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../resources/app_colors.dart';

class MonthTile extends StatelessWidget {
  final DateTime month;

  const MonthTile({super.key, required this.month});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        child: Text(DateFormat('MMM yyyy').format(month)),
      ),
    );
  }
}
