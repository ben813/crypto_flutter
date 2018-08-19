import 'dart:async';
import 'dart:convert';
import 'crypto_data.dart';
import 'package:http/http.dart' as http;

class ProdCryptoRepository implements CryptoRepository {
  @override
  Future<List<Crypto>> fetchCurrencies() async {
    String cryptoUrl = "https://api.coinmarketcap.com/v1/ticker/?limit=50";
    http.Response response = await http.get(cryptoUrl);
    final List responseBody = json.decode(response.body);
    final statusCode = response.statusCode;
    if (statusCode != 200 || responseBody == null) {
      throw FetchDataException(
          "An error occured : [Status code : $statusCode]");
    }
    return responseBody.map((c) => Crypto.fromMap(c)).toList();
  }
}
