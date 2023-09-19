import 'package:currencies_graph/presentation/blocs/currencies/bloc/currencies_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CurrenciesBloc>().state;

    return Scaffold(
      body: SafeArea(
        child: state.when(
          initial: () => const FlutterLogo(),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (supportedCurrencies) => ListView(
            children: supportedCurrencies
                .map((item) => ListTile(
                      leading: Image.network(
                        item.icon,
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                      title: Text(item.currencyName),
                      subtitle: Text(item.currencyCode),
                    ))
                .toList(),
          ),
          failed: (errorMessage) => Center(
            child: Text(errorMessage),
          ),
        ),
      ),
    );
  }
}
