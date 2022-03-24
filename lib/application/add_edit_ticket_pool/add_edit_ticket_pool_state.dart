part of 'add_edit_ticket_pool_cubit.dart';

@freezed
class AddEditTicketPoolState with _$AddEditTicketPoolState {
  const factory AddEditTicketPoolState({
    required List<TicketPool> currentTicketPools,
    required TicketQuantity ticketQuantity,
    required TicketPrice ticketPrice,
    required Option<TicketPool> editingTicketPool,
    required FormzStatus status,
    required Option<String> errorMessage,
    required Option<TicketPool> result,
  }) = _AddEditTicketPoolState;

  factory AddEditTicketPoolState.initial() => AddEditTicketPoolState(
        currentTicketPools: [],
        ticketQuantity: const TicketQuantity.pure(),
        ticketPrice: const TicketPrice.pure(),
        editingTicketPool: none(),
        status: FormzStatus.pure,
        errorMessage: none(),
        result: none(),
      );
}
