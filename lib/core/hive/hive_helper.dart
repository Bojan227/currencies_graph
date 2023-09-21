import 'package:currencies_graph/core/exceptions.dart';
import 'package:currencies_graph/core/hive/adapters/currency_adapter.dart';
import 'package:currencies_graph/data/models/currency_response.dart';

import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static String currenciesBoxName = 'CURRENCIES_BOX';
  static String currenciesKey = 'SUPPORTED_BOX';

  Future<void> initHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CurrencyResponseAdapter());
    Hive.registerAdapter(CurrencyDtoAdapter());
  }

  Future<Box> openBox(String boxName) async {
    return await Hive.openBox(boxName);
  }

  Future<void> closeBox(Box box) async {
    await box.close();
  }

  Future<void> save(CurrencyResponse currencyResponse) async {
    final Box currenciesBox = await openBox(currenciesBoxName);

    await currenciesBox.put(currenciesKey, currencyResponse);
  }

  Future<CurrencyResponse> getCachedData() async {
    final Box currenciesBox = await openBox(currenciesBoxName);

    final CurrencyResponse? currencyResponse = currenciesBox.get(currenciesKey);
    await closeBox(currenciesBox);

    if (currencyResponse == null) throw EmptyBoxException('Empty Box');

    return currencyResponse;
  }
}
