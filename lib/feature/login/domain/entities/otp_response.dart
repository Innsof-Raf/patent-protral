import 'package:equatable/equatable.dart';

class OtpResponse extends Equatable {
  final bool showPasswordSection;
  final String otp;

  const OtpResponse({required this.showPasswordSection, required this.otp});

  @override
  List<Object?> get props => [showPasswordSection, otp];
}
