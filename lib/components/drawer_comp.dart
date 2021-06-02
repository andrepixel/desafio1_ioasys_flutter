import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Column(
            children: [
              Container(
                color: Theme.of(context).primaryColor,
                height: 203,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(13, 24, 24, 0),
                      child: Image.asset('assets/images/image 2.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 24, 0),
                      child: Text(
                        'Usuario',
                        style: TextStyle(
                          fontFamily: 'Poppin',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            width: 203,
            height: 1000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 27),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 32, 0),
                            child: Icon(
                              Icons.accessibility,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            'Calculadora IMC',
                            style: TextStyle(
                              fontFamily: 'Poppin',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/todolist');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 27),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 32, 0),
                          child: Icon(
                            Icons.playlist_add_check_sharp,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Text(
                          'Lista de Tarefas',
                          style: TextStyle(
                            fontFamily: 'Poppin',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/converter');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 27),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 0, 32, 0),
                          child: Icon(
                            Icons.attach_money,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Text(
                          'Conversor de Moedas',
                          style: TextStyle(
                            fontFamily: 'Poppin',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/about');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 27),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 0, 32, 0),
                          child: Icon(
                            Icons.emoji_objects_outlined,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Text(
                          'Sobre',
                          style: TextStyle(
                            fontFamily: 'Poppin',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
