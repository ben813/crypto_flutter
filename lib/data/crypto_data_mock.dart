import 'dart:async';

import 'crypto_data.dart';

class MockCryptoRepository implements CryptoRepository {
  @override
  Future<List<Crypto>> fetchCurrencies() {
    return Future.value(currencies);
  }
}

var currencies = <Crypto>[
  new Crypto(name: "Btc", priceUsd: "900", percentChange1h: "+0.0"),
  new Crypto(name: "Eth", priceUsd: "100", percentChange1h: "+0.0"),
  new Crypto(name: "Like", priceUsd: "5", percentChange1h: "+0.0"),
];
