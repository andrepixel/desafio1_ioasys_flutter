import 'package:flutter/material.dart';

import '../models/coin_model.dart';
import '../repositories/dio_repository.dart';

class HomePageController {
  final TextEditingController realController = TextEditingController();
  final TextEditingController dollarController = TextEditingController();
  final TextEditingController euroController = TextEditingController();
  final CoinModel currency = CoinModel();
  DioRespository dioRespository = DioRespository();

  void realChanged() {
    dollarController.text =
        (double.parse(realController.text) / currency.dollar)
            .toStringAsFixed(2);

    euroController.text =
        (double.parse(realController.text) / currency.euro).toStringAsFixed(2);
  }

  void dollarChanged() {
    realController.text =
        (double.parse(dollarController.text) * currency.dollar)
            .toStringAsFixed(2);

    euroController.text =
        ((double.parse(dollarController.text) / currency.euro) *
                currency.dollar)
            .toStringAsFixed(2);
  }

  void euroChanged() {
    realController.text =
        (double.parse(euroController.text) * currency.euro).toStringAsFixed(2);

    dollarController.text =
        ((double.parse(euroController.text) / currency.dollar) * currency.euro)
            .toStringAsFixed(2);
  }
}
