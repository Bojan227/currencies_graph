import 'package:currencies_graph/core/injector/injector.dart';
import 'package:currencies_graph/presentation/blocs/currencies/currencies_bloc.dart';
import 'package:currencies_graph/presentation/blocs/timeseries/bloc/rates_bloc.dart';
import 'package:currencies_graph/presentation/blocs/timeseries/cubit/graph_form_cubit.dart';
import 'package:currencies_graph/presentation/ui/graph/graph_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RatesBloc ratesBloc = getIt<RatesBloc>();

  @override
  void dispose() {
    super.dispose();
    ratesBloc.close();
  }

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
                .map(
                  (item) => InkWell(
                    splashColor: Colors.grey[400],
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MultiBlocProvider(
                            providers: [
                              BlocProvider(
                                create: (context) => GraphFormCubit(),
                              ),
                              BlocProvider.value(
                                value: ratesBloc,
                              )
                            ],
                            child: GraphScreen(
                              currencyCode: item.currencyCode,
                              currencyName: item.currencyName,
                            ),
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Image.network(
                        item.icon,
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                      title: Text(item.currencyName),
                      subtitle: Text(item.currencyCode),
                    ),
                  ),
                )
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
