import 'package:flutter/material.dart';

class MainScreenHelpers {
  static ValueNotifier<int> mainScreenNotifier = ValueNotifier(0);
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();
}
