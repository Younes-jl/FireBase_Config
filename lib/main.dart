import 'package:controle_project/screens/Login.page.dart';
import 'package:controle_project/screens/Register.page.dart';
import 'package:flutter/material.dart';

import 'screens/Home.page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}

void main() {
  runApp(MyApp());
}
