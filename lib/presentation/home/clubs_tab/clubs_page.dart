import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_card.dart';
import 'package:raver/presentation/home/widgets/club_filter_section.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubsPage extends StatefulWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  State<ClubsPage> createState() => _ClubsPageState();
}

class _ClubsPageState extends State<ClubsPage> {
  final _scrollController = ScrollController();
  static const heroPhrase = "clubsPageHero";

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ClubSearchBar(),
        BlocBuilder<ClubsOverviewBloc, ClubsOverviewState>(
          builder: (context, state) {
            switch (state.status) {
              case CubitStatus.initial:
                return Container();

              case CubitStatus.failure:
                return RefreshIndicator(
                  onRefresh: () async => context.read<ClubsOverviewBloc>().add(
                        ClubsOverviewEvent.clubsFetched(state.clubFilter),
                      ),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Center(
                        child: Text(S().errorLoadingClubs),
                      ),
                    ),
                  ),
                );

              case CubitStatus.loading:
                return const Center(child: CircularProgressIndicator());

              case CubitStatus.success:
                if (state.clubs.isEmpty) {
                  return RefreshIndicator(
                    onRefresh: () async =>
                        context.read<ClubsOverviewBloc>().add(
                              ClubsOverviewEvent.clubsFetched(state.clubFilter),
                            ),
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Center(
                          child: Text(S().clubs(0)),
                        ),
                      ),
                    ),
                  );
                }
                return Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async =>
                        context.read<ClubsOverviewBloc>().add(
                              ClubsOverviewEvent.clubsFetched(state.clubFilter),
                            ),
                    child: ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
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
                      controller: _scrollController,
                      separatorBuilder: (_, __) => const SizedBox(
                        height: 10,
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

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      getIt<ClubsOverviewBloc>()
          .add(const ClubsOverviewEvent.nextPageClubsFetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.95);
  }
}
