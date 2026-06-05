import 'dart:async';

import 'package:flutter/material.dart';

class LoginScreenHelpers {
  static ValueNotifier<int> bagroundImageNotifier = ValueNotifier<int>(0);
  static const constHeiht20 = SizedBox(
    height: 20,
  );
  static const constWidtht20 = SizedBox(
    height: 20,
  );
  static const double constPadding = 20.0;
  static ValueNotifier<int> loginSectionNotifer = ValueNotifier<int>(0);
  static ValueNotifier<int> timerNotifer = ValueNotifier<int>(30);
  static Timer? timer;
  static void addTimer() {
    if (timer != null && timer!.isActive) {
      timer!.cancel();
    }
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (timerNotifer.value > 0) {
          timerNotifer.value = timerNotifer.value - 1;
        } else {
          timer?.cancel();
        }
      },
    );
  }
}
