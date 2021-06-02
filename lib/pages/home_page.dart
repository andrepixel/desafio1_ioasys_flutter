import 'package:desafio1_ioasys_flutter/components/appBar_comp.dart';
import 'package:desafio1_ioasys_flutter/components/drawer_comp.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weigthHuman = 0;
  double heigthHuman = 0;
  double imc = 0;
  String answer = '';
  var answersText = <Container>[];

  // @override
  // void initState() {
  //   super.initState();
  //   answersText.add(answerText());
  // }

  Container answerText() {
    return Container(
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
      drawer: CustomDrawer(),
      appBar: CustomAppBar('Calculadora IMC', true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(136, 36, 136, 47),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(50.0),
            //   child: Image.network(
            //     'https://avatars.githubusercontent.com/u/47698724?s=400&u=dbe5037d21202ec0676162bce4abe5480f8f80f9&v=4',

            //   ),
            // ),
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
                      imc = (weigthHuman /
                          ((heigthHuman / 100) * (heigthHuman / 100)));
                      print(imc);

                      if (imc < 18.6) {
                        answer = 'Você está abaixo do Peso';
                      } else if (imc > 18.6 && imc < 24.9) {
                        answer = 'Você está no seu Peso Ideal';
                      } else if (imc > 24.9 && imc < 29.9) {
                        answer = 'Você está Levemente acima do Peso';
                      } else if (imc > 29.9 && imc < 34.9) {
                        answer = 'Você está com Obesidade Grau I';
                      } else if (imc > 34.9 && imc < 39.9) {
                        answer = 'Você está com Obesidade Grau I';
                      } else if (imc > 34.9 && imc < 39.9) {
                        answer = 'Você está com Obesidade Grau II';
                      } else if (imc > 39.0) {
                        answer = 'Você está com Obesidade Grau III';
                      }
                      print(answer);

                      setState(() {
                        answersText.add(answerText());
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          answerText(),
        ],
      ),
    );
  }
}
