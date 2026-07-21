import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreenHelpers {
  static ValueNotifier<int> backgroundImageNotifier = ValueNotifier<int>(0);
  static const constHeight20 = Gap(20);
  static const constWidth20 = Gap(20);
  static const double constPadding = 20.0;
  static ValueNotifier<int> loginSectionNotifier = ValueNotifier<int>(0);
  static ValueNotifier<int> timerNotifier = ValueNotifier<int>(30);
  static Timer? timer;
  static void addTimer() {
    if (timer != null && timer!.isActive) {
      timer!.cancel();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (timerNotifier.value > 0) {
        timerNotifier.value = timerNotifier.value - 1;
      } else {
        timer?.cancel();
      }
    });
  }
}
