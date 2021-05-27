import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weigthHuman = 0;
  double heigthHuman = 0;
  double IMC = 0;
  String answer = '';
  var answersText = <Container>[];

  @override
  void initState() {
    super.initState();
    answersText.add(answerText());
  }

  Widget answerText() {
      return Container(
        padding: EdgeInsets.only(top: 40),
        child: Text(
          '$answer',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 375,
            height: 63,
            color: Color(0xFFC1007E),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                    child: Image.asset('assets/images/logo_home 1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 135, 0),
                    child: Text(
                      'Calculadora IMC',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                      child: Image.asset(
                        'assets/images/Vector.png',
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/home');
                      }),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(136, 36, 136, 47),
            child: Image.asset('assets/images/image 2.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(46, 0, 46, 38.5),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Peso(kg)',
                    labelStyle: TextStyle(
                      color: Color(0xFF919191),
                    ),
                  ),
                  onChanged: (context) {
                    weigthHuman = double.parse(context);
                    print(weigthHuman);
                  },
                ),
                TextField(
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Altura(cm)',
                      labelStyle: TextStyle(
                        color: Color(0xFF919191),
                      ),
                    ),
                    onChanged: (context) {
                      heigthHuman = double.parse(context);
                      print(heigthHuman);
                    }),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 38.5),
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    child: Text(
                      'Calcular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppin',
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFC1007E),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200),
                          ),
                        )),
                    onPressed: () {
                      IMC = (weigthHuman / ((heigthHuman/100) * (heigthHuman/100)));
                      print(IMC);

                      if (IMC < 18.6) {
                        answer = 'Você está abaixo do Peso';
                      } else if (IMC > 18.6 && IMC < 24.9) {
                        answer = 'Você está no seu Peso Ideal';
                      } else if (IMC > 24.9 && IMC < 29.9) {
                        answer = 'Você está Levemente acima do Peso';
                      } else if (IMC > 29.9 && IMC < 34.9) {
                        answer = 'Você está com Obesidade Grau I';
                      } else if (IMC > 34.9 && IMC < 39.9) {
                        answer = 'Você está com Obesidade Grau I';
                      } else if (IMC > 34.9 && IMC < 39.9) {
                        answer = 'Você está com Obesidade Grau II';
                      } else if (IMC > 39.0) {
                        answer = 'Você está com Obesidade Grau III';
                      }
                      print(answer);

                      setState(() {
                        answersText.add(answerText());
                      });
                    },
                  ),
                ),
                answerText(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
