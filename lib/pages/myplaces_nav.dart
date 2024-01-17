import 'package:flutter/material.dart';

class MyPlacesNav extends StatefulWidget {
  const MyPlacesNav({super.key});

  @override
  State<MyPlacesNav> createState() => _MyPlacesState();
}

class _MyPlacesState extends State<MyPlacesNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MyPlaces'),
      ),
    );
  }
}
