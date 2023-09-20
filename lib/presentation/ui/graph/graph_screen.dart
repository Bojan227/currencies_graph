import 'package:currencies_graph/presentation/blocs/timeseries/bloc/rates_bloc.dart';
import 'package:currencies_graph/presentation/blocs/timeseries/cubit/graph_form_cubit.dart';
import 'package:currencies_graph/presentation/ui/graph/widgets/bar_chart.dart';
import 'package:currencies_graph/presentation/ui/graph/widgets/bar_chart_graphic.dart';
import 'package:currencies_graph/presentation/ui/graph/widgets/date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GraphScreen extends StatelessWidget {
  final String currencyCode;
  final String currencyName;

  const GraphScreen({
    super.key,
    required this.currencyCode,
    required this.currencyName,
  });

  @override
  Widget build(BuildContext context) {
    final graphForm = context.watch<GraphFormCubit>().state.parameters;
    final ratesState = context.watch<RatesBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(currencyName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButton(
                    value: graphForm['base'],
                    hint: const Text('Base Currency'),
                    items: const [
                      DropdownMenuItem(
                        value: 'USD',
                        child: Text('USD'),
                      ),
                      DropdownMenuItem(
                        value: 'EUR',
                        child: Text('EUR'),
                      )
                    ],
                    onChanged: (value) {
                      context
                          .read<GraphFormCubit>()
                          .updateForm({'base': value});
                    },
                  ),
                  DatePicker(
                    graphForm: graphForm,
                  ),
                ],
              ),
              Text('From ${graphForm['startDate']} To ${graphForm['endDate']}'),
              ElevatedButton(
                onPressed: () {
                  context.read<RatesBloc>().add(GetRatesData(graphForm));
                },
                child: const Text("Submit"),
              ),
              const SizedBox(
                height: 18,
              ),
              ratesState.when(
                initial: () => const BarChartWidget(rates: []),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (rates) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(currencyCode),
                    const SizedBox(
                      height: 20,
                    ),
                    BarChartWidget(
                      rates: rates,
                    ),
                  ],
                ),
                failed: () => const Text('Failed to get rates data'),
              ),
              ratesState.when(
                initial: () => const BarChartWidget(rates: []),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (rates) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(currencyCode),
                    const SizedBox(
                      height: 20,
                    ),
                    BarChartCraphic(
                      rates: rates,
                    ),
                  ],
                ),
                failed: () => const Text('Failed to get rates data'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
