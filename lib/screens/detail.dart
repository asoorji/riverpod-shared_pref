import 'package:flutter/material.dart';

import '../model/user.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.e});

  final UserModel e;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: NetworkImage(e.avatar),
                ),
              ),
              Text("${e.firstname} ${e.lastname}"),
              Text(e.email),
            ],
          ),
        ),
      ),
    );
  }
}
