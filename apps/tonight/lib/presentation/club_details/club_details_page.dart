import 'package:auto_route/auto_route.dart';
import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_details/club_details_cubit.dart';
import 'package:tonight/application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'package:tonight/application/clubs/club_rewards/club_rewards_cubit.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/club_details/widgets/club_description.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs.dart';
import 'package:tonight/presentation/core/details_hero_image.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

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
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
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
          create: (context) => getIt<ClubReviewsBloc>()
            ..add(
              ClubReviewsEvent.reviewsFetched(widget.clubId ?? widget.club!.id),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<EventsBloc>()
            ..add(
              EventsEvent.menuFiltersApplied(
                filters: EventFilters.empty().copyWith(
                  clubFilter: ClubFilter(
                    clubId: widget.clubId ?? widget.club!.id,
                  ),
                ),
                appliedFilters: {},
              ),
            ),
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
            loadInProgress: (_) => const WaveLoadingIndicator(),
            loadFailure: (state) => const SizedBox.shrink(),
            loadSuccess: (state) {
              final club = state.club;
              return Scaffold(
                body: SafeArea(
                  child: NestedScrollView(
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
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
