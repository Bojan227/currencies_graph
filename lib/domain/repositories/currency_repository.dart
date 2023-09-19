import 'package:currencies_graph/domain/entities/currency_entity.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';

abstract class CurrencyRepository {
  Future<List<Currency>> getSupportedCurrencies();
  Future<List<Rate>> gethistoricalRatesList();
}
