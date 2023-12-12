import 'package:flutter/material.dart';
import 'package:task2_lvl2/pages/login_page.dart';
import 'package:task2_lvl2/pages/registeration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
