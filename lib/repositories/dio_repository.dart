import 'package:dio/dio.dart';

import '../models/coin_model.dart';

class DioRespository {
  final _dio = Dio();

  Future<CoinModel> getCurrencyRealToDollarAndEuro() async {
    Future.delayed(Duration(seconds: 2));
    
    try {
      final response = await _dio
          .get('https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL');

      if (response.statusCode == 200) {
        return CoinModel.fromJson(response.data);
      } else {
        print(response.statusMessage);
        return CoinModel();
      }
    } catch (e) {
      print(e);
      return CoinModel();
    }
  }
}
