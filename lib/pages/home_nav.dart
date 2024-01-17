import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'User email: ' +
                    (FirebaseAuth.instance.currentUser?.email ?? 'N/A'),
                style: const TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
