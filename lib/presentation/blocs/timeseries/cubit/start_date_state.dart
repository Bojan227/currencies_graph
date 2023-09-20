part of 'start_date_cubit.dart';

@freezed
class StartDateState with _$StartDateState {
  const factory StartDateState.selectedDate({required DateTime selectedDate}) =
      _SelectedDate;
}
