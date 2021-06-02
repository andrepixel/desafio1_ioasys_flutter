import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  String title;
  bool vector = false;

  @override
  final Size preferredSize;

  CustomAppBar(this.title, this.vector, {Key? key})
      : preferredSize = Size.fromHeight(56),
        super(key: key);

  Widget vectorAppBar(bool vector, BuildContext context) {
    if (vector == true) {
      return GestureDetector(
          child: Image.asset(
            'assets/images/Vector.png',
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          });
    } else {
      return Container(
        width: 0,
        height: 0,
      );
    }
  }

  Widget valueRightPadding(bool vector, String title) {
    if (vector == false && title.length < 18) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 135, 0),
        child: Text(
          '$title',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 91, 0),
        child: Text(
          '$title',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Image.asset('assets/images/logo_home 1.png'),
        ),
        valueRightPadding(vector, title),
        vectorAppBar(vector, context),
      ],
    );
  }
}
