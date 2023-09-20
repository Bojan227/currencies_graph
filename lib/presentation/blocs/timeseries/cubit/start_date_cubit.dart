import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_date_state.dart';
part 'start_date_cubit.freezed.dart';

class StartDateCubit extends Cubit<StartDateState> {
  StartDateCubit()
      : super(StartDateState.selectedDate(selectedDate: DateTime.now()));

  void selectDate(DateTime date) {
    emit(StartDateState.selectedDate(selectedDate: date));
  }
}
