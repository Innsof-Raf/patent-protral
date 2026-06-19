import 'package:flutter/material.dart';

void showMyAppointmentsSnackBar(
  BuildContext context, {
  required String message,
}) {
  final messenger = ScaffoldMessenger.of(context);
  final bottomInset = MediaQuery.paddingOf(context).bottom;

  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.fromLTRB(16, 12, 16, bottomInset + 88),
      ),
    );
}
