import 'dart:convert';

import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserLocalDataSource {
  Future<void> saveUser(User user);

  Future<User?> getUser();

  Future<void> clearUser();
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String _userKey = 'CACHED_USER';

  UserLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> saveUser(User user) async {
    User userToSave = user;
    if (user.refreshToken.isEmpty) {
      final existingUser = await getUser();
      if (existingUser != null && existingUser.refreshToken.isNotEmpty) {
        userToSave = user.copyWith(refreshToken: existingUser.refreshToken);
      }
    }
    final String userJson = jsonEncode(userToSave.toJson());
    await sharedPreferences.setString(_userKey, userJson);
  }

  @override
  Future<User?> getUser() async {
    final String? userJson = sharedPreferences.getString(_userKey);
    if (userJson != null) {
      return User.fromJson(jsonDecode(userJson) as Map<String, dynamic>);
    }
    return null;
  }

  @override
  Future<void> clearUser() async {
    await sharedPreferences.remove(_userKey);
  }
}
