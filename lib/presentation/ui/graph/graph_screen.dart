import 'package:currencies_graph/presentation/blocs/timeseries/cubit/start_date_cubit.dart';
import 'package:currencies_graph/presentation/ui/graph/widgets/date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GraphScreen extends StatelessWidget {
  final String currencyCode;
  final String currencyName;

  const GraphScreen(
      {super.key, required this.currencyCode, required this.currencyName});

  @override
  Widget build(BuildContext context) {
    final DateTime selectedDate =
        context.watch<StartDateCubit>().state.selectedDate;

    return Scaffold(
      appBar: AppBar(
        title: Text(currencyName),
      ),
      body: Column(
        children: [
          DatePicker(
            selectedDate: selectedDate,
          ),
        ],
      ),
    );
  }
}
