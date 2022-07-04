import 'package:flutter/material.dart';
import 'package:ugks_limousine_app/presentation/pages/default_page.dart';
import 'package:ugks_limousine_app/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UGKS LIMOUSINE App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF9F9FF),
        ),
        scaffoldBackgroundColor: const Color(0xFFF9F9FF),
      ),
      home: const LoginPage(),
    );
  }
}
