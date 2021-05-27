import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.fromLTRB(50, 75, 50, 0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo_ioasys 1.png',
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 129, 0, 0)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Seja bem vindo!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 31,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Calculadora IMC',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 43, 0, 0)),
            Container(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Container(
              height: 50,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                child: Text('ENTRAR'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(0, 0, 0, 1.0),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200),
                      ),
                    )),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
