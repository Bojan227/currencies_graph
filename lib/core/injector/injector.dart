import 'package:currencies_graph/core/hive/hive_helper.dart';
import 'package:currencies_graph/data/datasources/currency_local_datasource.dart';
import 'package:currencies_graph/data/datasources/currency_remote_datasource.dart';
import 'package:currencies_graph/data/repositories/currency_repository_impl.dart';
import 'package:currencies_graph/domain/repositories/currency_repository.dart';
import 'package:currencies_graph/domain/usecases/get_historical_rates_usecase.dart';
import 'package:currencies_graph/domain/usecases/get_supported_currencies_usecase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future setupInjector() async {
  final dio = Dio();
  final HiveHelper hiveHelper = HiveHelper();
  getIt.registerSingleton<HiveHelper>(hiveHelper);

  final CurrencyRemoteDataSource currencyRemoteDataSource =
      CurrencyRemoteDataSource(dio);

  final CurrencyLocalDataSource currencyLocalDataSource =
      CurrencyLocalDataSourceImpl(hiveHelper: hiveHelper);

  final CurrencyRepository currencyRepository = CurrencyRepositoryImpl(
      currencyRemoteDataSource: currencyRemoteDataSource,
      currencyLocalDataSource: currencyLocalDataSource);

  final GetSupportedCurrenciesUseCase getSupportedCurrenciesUseCase =
      GetSupportedCurrenciesUseCase(currencyRepository: currencyRepository);

  getIt.registerSingleton<GetSupportedCurrenciesUseCase>(
      getSupportedCurrenciesUseCase);

  final GetHistoricalRatesUseCase getHistoricalRatesUseCase =
      GetHistoricalRatesUseCase(currencyRepository: currencyRepository);

  getIt.registerSingleton<GetHistoricalRatesUseCase>(getHistoricalRatesUseCase);
}
