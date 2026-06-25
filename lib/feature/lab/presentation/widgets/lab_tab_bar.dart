import 'package:flutter/material.dart';

class LabTabBar extends StatelessWidget {
  final String title;
  const LabTabBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(title),
      ),
    );
  }
}
