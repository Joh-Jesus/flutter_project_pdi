import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_pdi_app/service/btc.service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class DioMock extends Mock implements DioForNative {}

void main() async {
  final Dio dio = DioMock();
  final response = Response(
      requestOptions: RequestOptions(path: ''),
      data: jsonDecode(jsonResponse),
      statusCode: 200);
  when(() => dio.get(any())).thenAnswer((_) async => response);
  final service = BTCService(dio);
  final btc = await service.getData();
  test("Deve retornar o valor correto do high", () {
    expect(btc.ticker?.high, 14481.47000000);
  });
}

const jsonResponse = r'''
{
    "ticker": {
        "high": 14481.47000000,
        "low": 13706.00002000,
        "vol": 443.73564488,
        "last": 14447.01000000,
        "buy": 14447.00100000,
        "sell": 14447.01000000,
        "date": 1502977646
    }
}
''';
