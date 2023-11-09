import 'package:demo/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/provider.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final userProfile = ref.watch(userProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${userProfile.name}'),
            Text('Phone: ${userProfile.phone}'),
            Text('Email: ${userProfile.email}'),
            Text('Age: ${userProfile.age}'),
            ElevatedButton(
              onPressed: () {
                // Create an updated profile
                UserProfile updatedProfile = UserProfile(
                  name: 'Updated Name',
                  phone: 'Updated Phone',
                  email: 'updated.email@example.com',
                  age: 50,
                );
                ref.read(userProfileProvider.notifier).state = updatedProfile;
              },
              child: const Text('Update Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
