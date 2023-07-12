part of 'tickets_bloc.dart';

@freezed
class TicketsState with _$TicketsState {
  const factory TicketsState({
    required List<Ticket> tickets,
    required bool hasReachedMax,
    required CubitStatus fetchTicketsStatus,
    required CubitStatus nextPageStatus,
  }) = _TicketsState;

  factory TicketsState.initial() => const TicketsState(
        tickets: [],
        hasReachedMax: false,
        fetchTicketsStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
      );
}
