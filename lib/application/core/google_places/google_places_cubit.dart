import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_place/google_place.dart';

part 'google_places_cubit.freezed.dart';
part 'google_places_state.dart';

class GooglePlacesCubit extends Cubit<GooglePlacesState> {
  final GooglePlace _googlePlace;

  GooglePlacesCubit(this._googlePlace) : super(GooglePlacesState.initial());

  void searchForCities(String value) async {
    final result = await _googlePlace.autocomplete.get(
      value,
      types: '(cities)',
      language: 'en',
    );
    if (result?.predictions != null) {
      emit(state.copyWith(predictions: result!.predictions!));
    }
  }

  void clearPredictions() {
    emit(state.copyWith(predictions: []));
  }
}
