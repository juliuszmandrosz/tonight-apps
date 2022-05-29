import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_details/club_details_cubit.dart';
import 'package:raver/application/clubs/club_details/club_reviews/club_reviews_bloc.dart';
import 'package:raver/application/clubs/club_rewards/club_rewards_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/club_details/widgets/club_description.dart';
import 'package:raver/presentation/club_details/widgets/club_details_image.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/application/application.dart';

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

class _ClubDetailsPageState extends State<ClubDetailsPage> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 0.95;
  late final ClubReviewsBloc _clubReviewsBloc;
  late final EventOverviewBloc _eventOverviewBloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          final cubit = getIt<ClubDetailsCubit>();
          widget.clubId != null
              ? cubit.getClubById(widget.clubId!)
              : cubit.addClubToState(widget.club!);
          return cubit;
        }),
        BlocProvider(
            create: (context) => getIt<ClubRewardsCubit>()
              ..getRewards(widget.clubId ?? widget.club!.id)),
        BlocProvider(
            create: (context) => getIt<ClubReviewsBloc>()
              ..add(ClubReviewsEvent.reviewsFetched(
                  widget.clubId ?? widget.club!.id)))
      ],
      child: BlocBuilder<ClubDetailsCubit, ClubDetailsState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
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
                          expandedHeight: 370,
                          floating: true,
                          backgroundColor: context.backgroundColor,
                          flexibleSpace: FlexibleSpaceBar(
                            collapseMode: CollapseMode.pin,
                            background: Column(
                              children: [
                                ClubDetailsImage(
                                  imageUrl: club.clubImageUrl,
                                  heroTag: widget.heroTag,
                                ),
                                const SizedBox(height: 20),
                                ClubDescription(club: club),
                              ],
                            ),
                          ),
                        ),
                      ];
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ClubDetailsTabs(club: club),
                    ),
                  ),
                ),
              );
            },
            loadFailure: (state) => Center(
              child: Text(state.clubFailure.toString()),
            ),
          );
        },
      ),
    );
  }
}
