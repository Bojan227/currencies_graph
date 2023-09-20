import 'package:bloc/bloc.dart';
import 'package:currencies_graph/domain/entities/currency_entity.dart';
import 'package:currencies_graph/domain/usecases/get_supported_currencies_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currencies_event.dart';
part 'currencies_state.dart';
part 'currencies_bloc.freezed.dart';

class CurrenciesBloc extends Bloc<CurrenciesEvent, CurrenciesState> {
  final GetSupportedCurrenciesUseCase getSupportedCurrenciesUseCase;

  CurrenciesBloc({required this.getSupportedCurrenciesUseCase})
      : super(const CurrenciesState.initial()) {
    on<GetSupportedCurrencies>(_onGetSupportedCurrencies);
  }

  Future<void> _onGetSupportedCurrencies(
      GetSupportedCurrencies event, Emitter emit) async {
    emit(const CurrenciesState.loading());

    try {
      final List<Currency> supportedCurrencies =
          await getSupportedCurrenciesUseCase.call();

      emit(
        CurrenciesState.loaded(supportedCurrencies: supportedCurrencies),
      );
    } catch (error) {
      emit(
        const CurrenciesState.failed(errorMessage: 'Failed to load currencies'),
      );
    }
  }
}
