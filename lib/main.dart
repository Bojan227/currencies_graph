import 'package:currencies_graph/data/datasources/currency_remote_datasource.dart';
import 'package:currencies_graph/data/repositories/currency_repository_impl.dart';
import 'package:currencies_graph/domain/repositories/currency_repository.dart';
import 'package:currencies_graph/domain/usecases/get_supported_currencies_usecase.dart';
import 'package:currencies_graph/presentation/blocs/currencies/bloc/currencies_bloc.dart';
import 'package:currencies_graph/presentation/ui/home_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    final CurrencyRemoteDataSource currencyRemoteDataSource =
        CurrencyRemoteDataSource(dio);
    final CurrencyRepository currencyRepository = CurrencyRepositoryImpl(
        currencyRemoteDataSource: currencyRemoteDataSource);

    final useCase =
        GetSupportedCurrenciesUseCase(currencyRepository: currencyRepository);

    return MaterialApp(
      title: 'Currency Freaks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) =>
            CurrenciesBloc(getSupportedCurrenciesUseCase: useCase)
              ..add(const GetSupportedCurrencies()),
        child: const HomeScreen(),
      ),
    );
  }
}
