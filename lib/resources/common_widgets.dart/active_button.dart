import 'package:flutter/material.dart';

import '../app_colors.dart';

class ActiveButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  const ActiveButton({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            padding: const EdgeInsets.all(10),
            backgroundColor: AppColors.vilot),
        onPressed: onPressed,
        child: child);
  }
}
