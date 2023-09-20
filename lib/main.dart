import 'package:currencies_graph/core/injector/injector.dart';
import 'package:currencies_graph/domain/usecases/get_supported_currencies_usecase.dart';
import 'package:currencies_graph/presentation/blocs/currencies/currencies_bloc.dart';
import 'package:currencies_graph/presentation/ui/home/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await setupInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GetSupportedCurrenciesUseCase getSupportedCurrenciesUseCase =
        getIt<GetSupportedCurrenciesUseCase>();

    return MaterialApp(
      title: 'Currency Freaks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => CurrenciesBloc(
            getSupportedCurrenciesUseCase: getSupportedCurrenciesUseCase)
          ..add(const GetSupportedCurrencies()),
        child: const HomeScreen(),
      ),
    );
  }
}
