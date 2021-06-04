// import 'package:desafio1_ioasys_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../pages/about_page.dart';
import '../pages/conveter_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/todolist_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/todolist': (context) => ToDoListPage(),
        '/converter': (context) => ConverterPage(),
        '/about': (context) => AboutPage(),
        // '/dio': (context) => DioPage(),
      },
    );
  }
}
