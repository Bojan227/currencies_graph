import 'package:bloc/bloc.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';
import 'package:currencies_graph/domain/usecases/get_historical_rates_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rates_event.dart';
part 'rates_state.dart';
part 'rates_bloc.freezed.dart';

class RatesBloc extends Bloc<RatesEvent, RatesState> {
  final GetHistoricalRatesUseCase getHistoricalRatesUseCase;

  RatesBloc({required this.getHistoricalRatesUseCase})
      : super(const _Initial()) {
    on<GetRatesData>(_onGetRates);
  }

  Future<void> _onGetRates(GetRatesData event, Emitter emit) async {
    emit(const RatesState.loading());

    try {
      List<Rate> ratesData = await getHistoricalRatesUseCase.call();

      emit(RatesState.loaded(rates: ratesData));
    } catch (error) {
      emit(const RatesState.failed());
    }
  }
}
