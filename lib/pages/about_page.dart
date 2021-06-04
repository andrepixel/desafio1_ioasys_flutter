import 'package:flutter/material.dart';

import '../components/appBar_comp.dart';
import '../components/drawer_comp.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar('Sobre', false),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/47698724?s=400&u=dbe5037d21202ec0676162bce4abe5480f8f80f9&v=4',
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Esse projeto só surgiu, por causa do evento CAMP cediado pela ioasys. Isso proveu 3 apps, Eles são: uma calculadora IMC, uma lista de tarefas, e um conversor de moedas, que estão em um só app. Foi uma experiência bem interessante, já que quase não conhecia nada sobre Flutter/Dart, e me apaixonei pela a tecnologia!',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/DashFlutter.gif',
                height: 250,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Se você chegou até aqui, muito obrigado! Esse foi meu primeiro \"grande\" app criado!',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(
                  child: Text(
                    'Version: 1.0.0',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
