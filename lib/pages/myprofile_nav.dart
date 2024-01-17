import 'package:flutter/material.dart';

class MyProfileNav extends StatefulWidget {
  const MyProfileNav({super.key});

  @override
  State<MyProfileNav> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfileNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MyProfile'),
      ),
    );
  }
}
