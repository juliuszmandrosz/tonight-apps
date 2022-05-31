part of 'add_edit_ticket_pool_cubit.dart';

@freezed
class AddEditTicketPoolState with _$AddEditTicketPoolState {
  const factory AddEditTicketPoolState({
    required List<TicketPool> currentTicketPools,
    required Option<Club> clubInfo,
    required TicketQuantity ticketQuantity,
    required TicketPrice ticketPrice,
    required VipPrice vipPrice,
    required Option<TicketPool> editingTicketPool,
    required FormzStatus status,
    required Option<String> errorMessage,
    required Option<TicketPool> result,
    required bool isVipEnabled,
  }) = _AddEditTicketPoolState;

  factory AddEditTicketPoolState.initial() => AddEditTicketPoolState(
        currentTicketPools: [],
        clubInfo: none(),
        ticketQuantity: const TicketQuantity.pure(),
        ticketPrice: TicketPrice.pure(none()),
        vipPrice: VipPrice.pure(none()),
        editingTicketPool: none(),
        status: FormzStatus.pure,
        errorMessage: none(),
        result: none(),
        isVipEnabled: false,
      );
}
