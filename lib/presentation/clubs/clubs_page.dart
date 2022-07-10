import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/clubs/widgets/club_card.dart';
import 'package:raver/presentation/clubs/widgets/club_filter_section.dart';
import 'package:raver/presentation/clubs/widgets/search_clubs_info.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubsPage extends StatefulWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  State<ClubsPage> createState() => _ClubsPageState();
}

class _ClubsPageState extends State<ClubsPage> {
  final _scrollController = ScrollController();
  late final ClubsOverviewBloc _clubsOverviewBloc;
  static const heroPhrase = "clubsPageHero";

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _clubsOverviewBloc = context.read<ClubsOverviewBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ClubFiltersCubit>(param1: _clubsOverviewBloc),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const ClubSearchBar(),
            const SizedBox(height: 15),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async => _refreshClubs(),
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: _scrollController,
                  children: [
                    const SearchClubsInfo(),
                    const SizedBox(height: 15),
                    BlocConsumer<ClubsOverviewBloc, ClubsOverviewState>(
                      listenWhen: (previous, current) =>
                          previous.status != current.status,
                      listener: (context, state) {
                        if (state.status.isFailure()) {
                          context.pushRoute(
                            FailureRoute(
                              retryCallback: () => _clubsOverviewBloc.add(
                                ClubsOverviewEvent.clubsFetched(
                                    state.clubFilter),
                              ),
                            ),
                          );
                        }
                      },
                      builder: (context, state) {
                        switch (state.status) {
                          case CubitStatus.initial:
                            return Container();

                          case CubitStatus.failure:
                            return Container();

                          case CubitStatus.loading:
                            return Center(
                              child: SpinKitThreeBounce(
                                color: context.onSurfaceColor,
                                size: 30,
                              ),
                            );

                          case CubitStatus.success:
                            if (state.clubs.isEmpty) {
                              return Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .2,
                                    ),
                                    Text(
                                      S().clubs(0),
                                      style: context.subtitle1,
                                    ),
                                    const SizedBox(height: 20),
                                    OutlinedButton(
                                      onPressed: () => _refreshClubs(),
                                      child: Text(S().refresh),
                                    ),
                                  ],
                                ),
                              );
                            }
                            return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.hasReachedMax
                                  ? state.clubs.length
                                  : state.clubs.length + 1,
                              itemBuilder: (context, index) {
                                return index >= state.clubs.length
                                    ? const BottomLoader()
                                    : ClubCard(
                                        club: state.clubs[index],
                                        index: index,
                                        heroPhrase: heroPhrase,
                                      );
                              },
                              separatorBuilder: (_, __) => const SizedBox(
                                height: 10,
                              ),
                            );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      _clubsOverviewBloc.add(const ClubsOverviewEvent.nextPageClubsFetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.95);
  }

  _refreshClubs() {
    _clubsOverviewBloc.add(
      ClubsOverviewEvent.clubsFetched(
        _clubsOverviewBloc.state.clubFilter,
      ),
    );
  }
}
