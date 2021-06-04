class CoinModel {
  double dollar;
  double euro;

  CoinModel({this.dollar = 0, this.euro = 0});

  factory CoinModel.fromJson(Map json) {
    return CoinModel(
      dollar: double.tryParse(json['USDBRL']['low']) ?? 0.0,
      euro: double.tryParse(json['EURBRL']['low']) ?? 0.0,
    );
  }
}
