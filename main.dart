import 'package:flutter/material.dart';
import 'package:my_flutter_project/account_page.dart';
import 'package:my_flutter_project/entrance_page.dart';
import 'package:my_flutter_project/home_page.dart';
import 'package:my_flutter_project/login_page.dart';
import 'package:my_flutter_project/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giriş Sayfası',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Entrance(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/register': (context) => const RegisterPage(),
        '/account': (context) => const AccountPage(),
      },
    );
  }
}
