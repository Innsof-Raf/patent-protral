import 'package:flutter/material.dart';

class ArrowForwardButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color iconColor;
  final Color bagroundColor;
  const ArrowForwardButton({
    super.key,
    required this.onPressed,
    required this.iconColor,
    required this.bagroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const Size(0, 0),
        elevation: 0,
        backgroundColor: bagroundColor,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(7),
      ),
      onPressed: onPressed,
      child: Icon(Icons.arrow_forward_ios, color: iconColor, size: 13),
    );
  }
}
