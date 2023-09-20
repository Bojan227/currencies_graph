import 'package:currencies_graph/presentation/blocs/timeseries/cubit/graph_form_cubit.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: Text(currencyName),
      ),
      body: Column(
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
                  context.read<GraphFormCubit>().updateForm({'base': value});
                },
              ),
              DatePicker(
                graphForm: graphForm,
              ),
            ],
          ),
          Text('From ${graphForm['startDate']} To ${graphForm['endDate']}'),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Submit"),
          )
        ],
      ),
    );
  }
}
