import 'package:bloc/bloc.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/places/city_entity.dart';
import 'package:tonight/domain/places/places_facade.dart';

part 'places_cubit.freezed.dart';
part 'places_state.dart';

class PlacesCubit extends Cubit<PlacesState> {
  final PlacesFacade _placesFacade;

  PlacesCubit(this._placesFacade) : super(PlacesState.initial());

  void searchForCities(String value) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _placesFacade.getCities(value);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (cities) => emit(
        state.copyWith(
          status: CubitStatus.success,
          cities: cities,
          previousSearch: value,
        ),
      ),
    );
  }

  void clearCities() {
    emit(state.copyWith(cities: []));
  }
}
