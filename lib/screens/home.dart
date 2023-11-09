import 'dart:convert';

import 'package:demo/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/provider.dart';

class MyHomePage extends ConsumerWidget {
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
              onPressed: () async {
                UserProfile updatedProfile = UserProfile(
                  name: 'Updated Namesss',
                  phone: 'Updated Phonesddd',
                  email: 'updated.email@example.com',
                  age: 30,
                );

                ref.read(userProfileProvider.notifier).state = updatedProfile;

                final sharedPreferences = ref.read(sharedPreferencesProvider);
                await sharedPreferences.setString(
                    'userProfile', json.encode(updatedProfile.toJson()));
              },
              child: const Text('Update Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
