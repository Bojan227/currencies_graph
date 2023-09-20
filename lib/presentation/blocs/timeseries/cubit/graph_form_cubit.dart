import 'package:bloc/bloc.dart';
import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_form_state.dart';
part 'graph_form_cubit.freezed.dart';

class GraphFormCubit extends Cubit<GraphFormState> {
  GraphFormCubit()
      : super(
          GraphFormState.graphArguments(
            {
              "startDate": convertDate(
                DateTime.now().subtract(
                  const Duration(days: 7),
                ),
              ),
              "endDate": convertDate(DateTime.now()),
              "base": "USD"
            },
          ),
        );

  void updateForm(Map<String, dynamic> formData) {
    emit(GraphFormState.graphArguments({...state.parameters, ...formData}));
  }
}
