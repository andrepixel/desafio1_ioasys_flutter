import 'package:flutter/material.dart';

import '../components/appBar_comp.dart';
import '../components/drawer_comp.dart';
import '../components/textfield_comp.dart';
import '../controllers/home_controller.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final HomePageController controller = HomePageController();

  @override
  void initState() {
    super.initState();
    controller.dioRespository.getCurrencyRealToDollarAndEuro().then((value) {
      controller.currency.dollar = value.dollar;
      controller.currency.euro = value.euro;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        'Conversor de Moedas',
        false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.5, horizontal: 110),
              child: Icon(
                Icons.attach_money,
                color: Theme.of(context).primaryColor,
                size: 145,
              ),
            ),
            CustomTextFieldCoin(
              'Real',
              'R\$ ',
              controller.realController,
              onChanged: controller.realChanged,
            ),
            CustomTextFieldCoin(
              'Dólar',
              'US\$ ',
              controller.dollarController,
              onChanged: controller.dollarChanged,
            ),
            CustomTextFieldCoin(
              'Euro',
              '\€ ',
              controller.euroController,
              onChanged: controller.euroChanged,
            ),
          ],
        ),
      ),
    );
  }
}
