import 'package:currencies_graph/presentation/blocs/timeseries/cubit/start_date_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key, required this.selectedDate});

  final DateTime selectedDate;

  //Method for showing the date picker
  void _pickDateDialog(
      BuildContext context, void Function(DateTime date) selectDate) {
    showDatePicker(
            currentDate: selectedDate,
            context: context,
            initialDate: DateTime.now(),
            //which date will display when user open the picker
            firstDate: DateTime(1950),
            //what will be the previous supported year in picker
            lastDate: DateTime
                .now()) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      selectDate(pickedDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectDate = context.read<StartDateCubit>().selectDate;

    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _pickDateDialog(context, selectDate);
          },
          child: const Text('Add Date'),
        ),
        const SizedBox(height: 20),
        Text(
          'Picked Date: ${selectedDate.year}-${selectedDate.month}-${selectedDate.day}',
        ),
      ],
    );
  }
}
