import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/user.dart';
import 'service.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUsers();
});
