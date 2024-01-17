import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jawla/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const JawlaApp());
}

class JawlaApp extends StatelessWidget {
  const JawlaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jawla',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF080E1F),
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
