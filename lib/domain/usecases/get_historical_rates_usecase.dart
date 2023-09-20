import 'package:currencies_graph/domain/entities/rates_entity.dart';
import 'package:currencies_graph/domain/repositories/currency_repository.dart';

class GetHistoricalRatesUseCase {
  final CurrencyRepository currencyRepository;

  GetHistoricalRatesUseCase({required this.currencyRepository});

  Future<List<Rate>> call() async {
    return await currencyRepository.gethistoricalRatesList();
  }
}
