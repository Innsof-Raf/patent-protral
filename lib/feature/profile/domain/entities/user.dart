import 'package:freezed_annotation/freezed_annotation.dart';
import 'member.dart';

part 'generated/user.freezed.dart';

@freezed
sealed class User with _$User {
  const factory User({
    required int id,
    required String firstName,
    required String lastName,
    required String userName,
    required String mobileNumber,
    required String emailId,
    required String accessToken,
    @Default('') String fcmToken,
    required List<Member> members,
    @Default(0) int idMember,
  }) = _User;
}
