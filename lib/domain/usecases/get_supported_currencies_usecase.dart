import 'package:currencies_graph/domain/entities/currency_entity.dart';
import 'package:currencies_graph/domain/repositories/currency_repository.dart';

class GetSupportedCurrenciesUseCase {
  final CurrencyRepository currencyRepository;

  GetSupportedCurrenciesUseCase({required this.currencyRepository});

  Future<List<Currency>> call() async {
    return await currencyRepository.getSupportedCurrencies();
  }
}
