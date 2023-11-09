import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/user.dart';

final userProfileProvider = StateProvider<UserProfile>((ref) {
  return UserProfile(
      name: 'John Doe',
      phone: '123-456-7890',
      email: 'john.doe@example.com',
      age: 25);
});
