import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/tonight_events/widgets/no_tonight_events_info.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_card.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_filter_chips.dart';

class TonightEventsPage extends StatelessWidget {
  const TonightEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
            bottom: 8,
          ),
          alignment: Alignment.centerLeft,
          child: const TonightEventFilterChips(),
        ),
        BlocConsumer<TonightEventsBloc, TonightEventsState>(
          listenWhen: (p, c) =>
              p.errorMessage != c.errorMessage ||
              p.usedVoucher != c.usedVoucher ||
              p.useVoucherStatus != c.useVoucherStatus,
          listener: (ctx, state) async {
            state.errorMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );

            state.useVoucherStatus.isLoading()
                ? context.loaderOverlay.show()
                : context.loaderOverlay.hide();

            if (state.usedVoucher.isSome()) {
              await context.router.replaceAll([
                const WelcomeLoaderRoute(),
                const TicketsAndVouchersRoute(),
                RedeemTonightVoucherRoute(
                  voucher: UserTonightVoucher.fromTonightVoucher(
                    state.usedVoucher.getOrCrash().toDomain(),
                  ),
                ),
              ]);
            }
          },
          builder: (ctx, state) {
            switch (state.getEventsStatus) {
              case CubitStatus.initial:
                return const SizedBox.shrink();
              case CubitStatus.failure:
                return Expanded(
                  child: FailureInfo(
                    retryCallback: () => context
                        .read<TonightEventsBloc>()
                        .add(const TonightEventsEvent.eventsRefreshed()),
                    isSocketException: state.failure.fold(
                      () => false,
                      (f) => f.maybeWhen(
                        noConnection: () => true,
                        orElse: () => false,
                      ),
                    ),
                  ),
                );
              case CubitStatus.loading:
                return const Expanded(child: WaveLoadingIndicator());
              case CubitStatus.success:
                return state.events.isEmpty
                    ? const Expanded(child: NoTonightEventsInfo())
                    : Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async => context
                              .read<TonightEventsBloc>()
                              .add(const TonightEventsEvent.eventsRefreshed()),
                          child: InfiniteList(
                            itemCount: state.events.length,
                            hasReachedMax: state.hasReachedMax,
                            isLoading: state.getEventsStatus.isLoading(),
                            hasError: state.getEventsStatus.isFailure(),
                            onFetchData: () =>
                                context.read<TonightEventsBloc>().add(
                                      const TonightEventsEvent
                                          .nextPageEventsFetched(),
                                    ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 16),
                            itemBuilder: (_, i) => TonightEventCard(
                              event: state.events[i],
                            ),
                          ),
                        ),
                      );
            }
          },
        ),
      ],
    );
  }
}
