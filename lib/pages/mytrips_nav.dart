import 'package:flutter/material.dart';

class MyTripsNav extends StatefulWidget {
  const MyTripsNav({super.key});

  @override
  State<MyTripsNav> createState() => _MyTripsState();
}

class _MyTripsState extends State<MyTripsNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MyTrips'),
      ),
    );
  }
}
