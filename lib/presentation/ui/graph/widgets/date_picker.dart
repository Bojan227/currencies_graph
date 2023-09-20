import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:currencies_graph/presentation/blocs/timeseries/cubit/graph_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key, required this.graphForm});

  final Map<String, dynamic> graphForm;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        final picked = await showDateRangePicker(
          context: context,
          lastDate: DateTime.now(),
          firstDate: DateTime(2019),
        );
        if (picked != null && context.mounted) {
          DateTime start = picked.start;
          DateTime end = picked.end;

          context.read<GraphFormCubit>().updateForm(
              {"startDate": convertDate(start), "endDate": convertDate(end)});
        }
      },
      icon: const Icon(
        Icons.calendar_today,
        color: Colors.green,
      ),
      label: const Text('Select Date Range'),
    );
  }
}
