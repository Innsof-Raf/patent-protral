import 'package:flutter/material.dart';

import '../app_colors.dart';

class ActiveOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  const ActiveOutlinedButton(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            side: const BorderSide(color: AppColors.vilot, width: .5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            padding: const EdgeInsets.all(10),
            backgroundColor: AppColors.white),
        onPressed: onPressed,
        child: child);
  }
}
