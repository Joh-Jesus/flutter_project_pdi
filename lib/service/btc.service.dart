import 'package:dio/dio.dart';
import 'package:flutter_pdi_app/model/btc.model.dart';

class BTCService {
  final Dio dio;

  final url = "https://www.mercadobitcoin.net/api/BTC/ticker/";

  BTCService(this.dio);

  Future<BTCModel> getData() async {
    final response = await dio.get(url);
    final data = response.data;
    final btc = BTCModel.fromJson(data);
    return btc;
  }
}
