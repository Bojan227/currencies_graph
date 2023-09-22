import 'package:currencies_graph/core/exceptions.dart';
import 'package:currencies_graph/core/hive/adapters/currency_adapter.dart';

import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper<T> {
  final String currenciesBoxName;
  final String currenciesKey;

  HiveHelper({required this.currenciesBoxName, required this.currenciesKey});

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

  Future<void> save(T data) async {
    final Box currenciesBox = await openBox(currenciesBoxName);

    await currenciesBox.put(currenciesKey, data);
  }

  Future<T> getCachedData() async {
    final Box currenciesBox = await openBox(currenciesBoxName);

    final T? currencyResponse = currenciesBox.get(currenciesKey);
    await closeBox(currenciesBox);

    if (currencyResponse == null) throw EmptyBoxException('Empty Box');

    return currencyResponse;
  }
}
