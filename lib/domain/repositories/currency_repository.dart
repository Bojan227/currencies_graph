import 'package:currencies_graph/domain/entities/currency_entity.dart';

abstract class CurrencyRepository {
  Future<List<Currency>> getSupportedCurrencies();
}
