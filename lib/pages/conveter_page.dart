import 'package:desafio1_ioasys_flutter/components/appBar_comp.dart';
import 'package:desafio1_ioasys_flutter/components/drawer_comp.dart';
import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final TextEditingController _toDoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        'Conversor de Moedas',
        false,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 110),
            child: Icon(
              Icons.attach_money,
              color: Theme.of(context).primaryColor,
              size: 145,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 17.5,
              horizontal: 38,
            ),
            child: TextField(
              
              controller: _toDoController,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                labelText: 'Real',
                labelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                focusColor: Theme.of(context).accentColor,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 17.5,
              horizontal: 38,
            ),
            child: TextField(
              controller: _toDoController,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                labelText: 'Dólar',
                labelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                focusColor: Theme.of(context).accentColor,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 17.5,
              horizontal: 38,
            ),
            child: TextField(
              controller: _toDoController,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                labelText: 'Euro',
                labelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                focusColor: Theme.of(context).accentColor,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
