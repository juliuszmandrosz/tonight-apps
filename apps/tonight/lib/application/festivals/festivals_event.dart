part of 'festivals_bloc.dart';

@freezed
class FestivalsEvent with _$FestivalsEvent {
  const factory FestivalsEvent.festivalsFetched() = _FestivalsFetched;

  const factory FestivalsEvent.nextPageFestivalsFetched() = _NextPageFestivalsFetched;

  const factory FestivalsEvent.festivalsRefreshed() = _FestivalsRefreshed;

}
