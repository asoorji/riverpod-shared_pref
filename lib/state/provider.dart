import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';

final userProfileProvider = StateProvider<UserProfile>((ref) {
  final sharedPreferences = ref.read(sharedPreferencesProvider);
  final userProfileJson = sharedPreferences.getString('userProfile');
  return userProfileJson != null
      ? UserProfile.fromJson(
          Map<String, dynamic>.from(json.decode(userProfileJson)))
      : UserProfile(
          name: 'John Doe',
          phone: '123-456-7890',
          email: 'john.doe@example.com',
          age: 25);
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});
