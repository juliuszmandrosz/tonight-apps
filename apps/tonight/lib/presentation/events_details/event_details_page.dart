import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/events/event_details/event_details_cubit.dart';
import 'package:tonight/application/tonight_events/models/event_voucher_model.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/details_hero_image.dart';
import 'package:tonight/presentation/events_details/widgets/bottom_bar/event_details_bottom_bar.dart';
import 'package:tonight/presentation/events_details/widgets/bottom_bar/event_details_join_button.dart';
import 'package:tonight/presentation/events_details/widgets/canceled_event_message.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_additional_info.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_artist_name.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_club_name.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_date_and_time.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_event_description.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_event_name.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_ticket_pools.dart';
import 'package:tonight/presentation/events_details/widgets/tiles/event_details_section.dart';
import 'package:tonight/presentation/events_details/widgets/voucher_modal.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventDetailsPage extends HookWidget {
  final String? eventId;
  final Event? event;
  final String? heroTag;
  final EventVoucher? voucher;
  final int? ticketPrice;

  EventDetailsPage({
    this.eventId,
    this.event,
    this.heroTag,
    this.voucher,
    int? ticketPrice,
    Key? key,
  })  : ticketPrice = ticketPrice ?? event?.price,
        assert((eventId != null || event != null), 'Event is not available'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final isModalVisible = useState(true);
    onScroll() => isModalVisible.value = scrollController.position.pixels < 50;
    useEffect(() {
      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);
    return BlocProvider(
      create: (context) {
        final cubit = getIt<EventDetailsCubit>();
        eventId != null
            ? cubit.getEventById(eventId!)
            : cubit.addEventToState(event!);
        return cubit;
      },
      child: TonightOverlay(
        child: BlocConsumer<EventDetailsCubit, EventDetailsState>(
          listenWhen: (p, c) =>
              p.errorMessage != c.errorMessage ||
              p.useVoucherStatus != c.useVoucherStatus,
          listener: (ctx, state) async {
            if (state.useVoucherStatus.isSuccess()) {
              await context.router.replaceAll([
                const WelcomeLoaderRoute(),
                const TicketsAndVouchersRoute(),
                RedeemTonightVoucherRoute(
                  voucher: UserTonightVoucher.fromTonightVoucher(
                    voucher!.toDomain(),
                  ),
                ),
              ]);
              return;
            }

            state.useVoucherStatus.isLoading()
                ? context.loaderOverlay.show()
                : context.loaderOverlay.hide();

            state.errorMessage.fold(
              () {},
              (message) => showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  // TODO - add translations
                  title: Text('Informacja'),
                  content: Text(message),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
            );
          },
          builder: (context, state) {
            if (state.status.isInitial()) {
              return const SizedBox.shrink();
            }

            if (state.status.isLoading()) {
              return const WaveLoadingIndicator();
            }

            if (state.status.isFailure()) {
              final cubit = context.read<EventDetailsCubit>();
              final callback = eventId != null
                  ? cubit.getEventById(eventId!)
                  : cubit.addEventToState(event!);
              return FailureInfo(retryCallback: () => callback);
            }

            final eventInState = state.event.getOrCrash();

            return SafeArea(
              child: Stack(
                children: [
                  Scaffold(
                    backgroundColor: context.backgroundColor,
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.endContained,
                    floatingActionButton:
                        _checkIfBottomBarIsAvailable(eventInState)
                            ? EventDetailsJoinButton(event: eventInState)
                            : null,
                    bottomNavigationBar:
                        _checkIfBottomBarIsAvailable(eventInState)
                            ? EventDetailsBottomBar(event: eventInState)
                            : null,
                    body: LayoutBuilder(builder: (context, constraints) {
                      final photoHeight = constraints.maxHeight * 0.420;
                      return NestedScrollView(
                        controller: scrollController,
                        headerSliverBuilder: (context, value) {
                          return [
                            SliverAppBar(
                              automaticallyImplyLeading: false,
                              expandedHeight: photoHeight,
                              floating: true,
                              flexibleSpace: FlexibleSpaceBar(
                                collapseMode: CollapseMode.pin,
                                background: Column(
                                  children: [
                                    DetailsHeroImage(
                                      imageUrl: eventInState.eventPhotoUrl,
                                      heroTag: heroTag,
                                      height: photoHeight,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ];
                        },
                        body: SingleChildScrollView(
                          child: Column(
                            children: [
                              if (eventInState.isCanceled)
                                const CanceledEventMessage(),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    if (!eventInState.isCanceled)
                                      Column(
                                        children: [
                                          EventDetailsSection(
                                            event: eventInState,
                                            ticketPrice: ticketPrice,
                                          ),
                                          const SizedBox(height: 20),
                                        ],
                                      ),
                                    const SizedBox(height: 10),
                                    EventDetailsEventName(event: eventInState),
                                    const SizedBox(height: 20),
                                    EventDetailsClubName(event: eventInState),
                                    const SizedBox(height: 20),
                                    if (eventInState.isConcert)
                                      EventDetailsArtistName(
                                          event: eventInState),
                                    EventDetailsDateAndTime(
                                        event: eventInState),
                                    const SizedBox(height: 20),
                                    if (eventInState.description != null &&
                                        eventInState.description!.isNotEmpty)
                                      EventDetailsEventDescription(
                                        event: eventInState,
                                      ),
                                    EventDetailsAdditionalInfo(
                                        event: eventInState),
                                    if (!eventInState.isCanceled &&
                                        eventInState.eventEndDateTime
                                            .isAfter(DateTime.now()))
                                      EventDetailsTicketPools(
                                          event: eventInState),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  if (voucher != null && !(voucher!.isExpired))
                    Positioned(
                      bottom: kBottomNavigationBarHeight + 24,
                      left: 0,
                      right: 0,
                      child: VoucherModal(
                        voucher: voucher!,
                        isVisible: isModalVisible.value,
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

bool _checkIfBottomBarIsAvailable(Event event) {
  if (event.isCanceled) {
    return false;
  }

  if (event.eventEndDateTime.isBefore(DateTime.now())) {
    return false;
  }

  return true;
}
