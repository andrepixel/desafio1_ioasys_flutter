// import 'package:desafio1_ioasys_flutter/pages/home_page.dart';
import 'package:desafio1_ioasys_flutter/pages/home_page.dart';
import 'package:desafio1_ioasys_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';

main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC (ioasys)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFFC1007E)),
      initialRoute: '/home',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
