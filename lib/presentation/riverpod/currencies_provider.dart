import 'package:currencies_graph/core/hive/hive_helper.dart';
import 'package:currencies_graph/data/datasources/currency_local_datasource.dart';
import 'package:currencies_graph/data/datasources/currency_remote_datasource.dart';
import 'package:currencies_graph/data/repositories/currency_repository_impl.dart';
import 'package:currencies_graph/domain/entities/currency_entity.dart';

import 'package:currencies_graph/domain/usecases/get_supported_currencies_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider((ref) => Dio());

final hiveHelperProvider = Provider((ref) => HiveHelper(
    currenciesBoxName: "CURRENCIES_BOX",
    currenciesKey: "SUPPORTED_CURRENCIES"));

final currenctLocalDataSourceProvider = Provider((ref) {
  final hiveHelper = ref.read(hiveHelperProvider);
  return CurrencyLocalDataSourceImpl(hiveHelper: hiveHelper);
});
final currenctRemoteDataSourceProvider = Provider((ref) {
  final dio = ref.read(dioProvider);

  return CurrencyRemoteDataSource(dio);
});

final currencyRepositoryProvider = Provider(
  (ref) {
    final localDataSource = ref.read(currenctLocalDataSourceProvider);
    final remoteDataSource = ref.read(currenctRemoteDataSourceProvider);

    return CurrencyRepositoryImpl(
        currencyLocalDataSource: localDataSource,
        currencyRemoteDataSource: remoteDataSource);
  },
);

final supportedCurrenciesUseCaseProvider = Provider(
  (ref) {
    final currencyRepo = ref.read(currencyRepositoryProvider);

    return GetSupportedCurrenciesUseCase(currencyRepository: currencyRepo);
  },
);

final supportedCurrenciesProvider =
    FutureProvider.autoDispose<List<Currency>>((ref) {
  final GetSupportedCurrenciesUseCase getSupportedCurrenciesUseCase =
      ref.read(supportedCurrenciesUseCaseProvider);

  return getSupportedCurrenciesUseCase.call();
});
