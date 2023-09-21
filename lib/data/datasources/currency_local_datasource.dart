import 'package:currencies_graph/core/hive/hive_helper.dart';
import 'package:currencies_graph/data/models/currency_response.dart';

abstract class CurrencyLocalDataSource {
  Future<void> cacheSupportedCurrencies(CurrencyResponse currencyResponse);
  Future<CurrencyResponse> getCachedSupportedCurrencies();
}

class CurrencyLocalDataSourceImpl implements CurrencyLocalDataSource {
  final HiveHelper hiveHelper;

  CurrencyLocalDataSourceImpl({required this.hiveHelper});

  @override
  Future<void> cacheSupportedCurrencies(
      CurrencyResponse currencyResponse) async {
    await hiveHelper.save(currencyResponse);
  }

  @override
  Future<CurrencyResponse> getCachedSupportedCurrencies() async {
    return await hiveHelper.getCachedData();
  }
}
