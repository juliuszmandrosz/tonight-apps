import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_details/club_details_cubit.dart';
import 'package:raver/application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'package:raver/application/clubs/club_rewards/club_rewards_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/club_details/widgets/club_description.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs.dart';
import 'package:raver/presentation/core/details_hero_image.dart';
import 'package:raver/presentation/core/ticket_logo_animation.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

class ClubDetailsPage extends StatefulWidget {
  final Club? club;
  final String? clubId;
  final String? heroTag;

  const ClubDetailsPage({
    Key? key,
    this.clubId,
    this.club,
    this.heroTag,
  })  : assert((club != null || clubId != null), 'Club not available'),
        super(key: key);

  @override
  State<ClubDetailsPage> createState() => _ClubDetailsPageState();
}

class _ClubDetailsPageState extends State<ClubDetailsPage>
    with SingleTickerProviderStateMixin {
  final _scrollThreshold = 0.95;
  late final ClubReviewsBloc _clubReviewsBloc;
  late final EventOverviewBloc _eventOverviewBloc;
  late final ScrollController _scrollController;
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final cubit = getIt<ClubDetailsCubit>();
            widget.clubId != null
                ? cubit.getClubById(widget.clubId!)
                : cubit.addClubToState(widget.club!);
            return cubit;
          },
        ),
        BlocProvider(
          create: (context) => getIt<ClubRewardsCubit>()
            ..getRewards(widget.clubId ?? widget.club!.id),
        ),
        BlocProvider(
          create: (context) {
            final reviewsBloc = getIt<ClubReviewsBloc>();

            reviewsBloc.add(
              ClubReviewsEvent.reviewsFetched(widget.clubId ?? widget.club!.id),
            );

            _clubReviewsBloc = reviewsBloc;

            return reviewsBloc;
          },
        ),
        BlocProvider(
          create: (context) {
            final eventsBloc = getIt<EventOverviewBloc>();
            eventsBloc.add(
              EventOverviewEvent.eventsFetched(
                EventFilters.empty().copyWith(
                  clubFilter:
                      ClubFilter(clubId: widget.clubId ?? widget.club!.id),
                  dateRangeFilter: DateRangeFilter(
                    fromDate: DateTime.now(),
                    toDate: null,
                  ),
                ),
                EventSortModel.empty(),
              ),
            );
            _eventOverviewBloc = eventsBloc;
            return eventsBloc;
          },
        ),
      ],
      child: BlocConsumer<ClubDetailsCubit, ClubDetailsState>(
        listener: (context, state) {
          if (state.maybeWhen(orElse: () => false, loadFailure: (_) => true)) {
            context.pushRoute(
              FailureRoute(
                retryCallback: () => context
                    .read<ClubDetailsCubit>()
                    .getClubById(widget.clubId!),
              ),
            );
          }
        },
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const TicketLogoAnimation(),
            loadSuccess: (state) {
              final club = state.club;
              return Scaffold(
                body: SafeArea(
                  child: NestedScrollView(
                    controller: _scrollController,
                    headerSliverBuilder: (context, value) {
                      return [
                        SliverAppBar(
                          automaticallyImplyLeading: false,
                          expandedHeight: 400,
                          floating: true,
                          backgroundColor: context.backgroundColor,
                          flexibleSpace: FlexibleSpaceBar(
                            collapseMode: CollapseMode.pin,
                            background: Column(
                              children: [
                                DetailsHeroImage(
                                  imageUrl: club.clubImageUrl,
                                  heroTag: widget.heroTag,
                                  sharePath: 'clubs?clubId=${club.id}',
                                ),
                                const SizedBox(height: 10),
                                ClubDescription(club: club),
                              ],
                            ),
                          ),
                        ),
                      ];
                    },
                    body: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                      child: ClubDetailsTabs(
                        club: club,
                        tabController: _tabController,
                      ),
                    ),
                  ),
                ),
              );
            },
            loadFailure: (state) => Container(),
          );
        },
      ),
    );
  }

  void _onScroll() {
    final selectedIndex = _tabController.index;

    if (selectedIndex == 1 && selectedIndex == 2) return;

    if (!_isBottom) return;

    if (selectedIndex == 0) {
      _eventOverviewBloc.add(const EventOverviewEvent.nextEventsPageFetched());
    }

    if (selectedIndex == 3) {
      _clubReviewsBloc.add(const ClubReviewsEvent.nextPageReviewsFetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * _scrollThreshold);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    _tabController.dispose();
    super.dispose();
  }
}
