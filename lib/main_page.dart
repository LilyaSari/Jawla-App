import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jawla/home_page.dart';

import 'login.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            CircularProgressIndicator();
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return Login();
            }
          }),
    );
  }
}
