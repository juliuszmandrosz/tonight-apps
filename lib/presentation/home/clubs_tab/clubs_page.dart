import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/cubit_status.dart';
import 'package:raver/domain/clubs/filters/club_filter.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_card.dart';
import 'package:raver/presentation/home/widgets/club_filter_section.dart';

class ClubsPage extends StatefulWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  State<ClubsPage> createState() => _ClubsPageState();
}

class _ClubsPageState extends State<ClubsPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ClubsOverviewBloc>(
          create: (context) => getIt<ClubsOverviewBloc>()
            ..add(ClubsOverviewEvent.clubsFetched(
              ClubFilter.empty(),
            )),
        ),
        BlocProvider(
          create: (context) => getIt<ClubFiltersCubit>(),
        ),
      ],
      child: Column(
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
                    onRefresh: () async =>
                        context.read<ClubsOverviewBloc>().add(
                              ClubsOverviewEvent.clubsFetched(state.clubFilter),
                            ),
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: const Center(
                          child: Text('Failed fetching clubs'),
                        ),
                      ),
                    ),
                  );

                case CubitStatus.loading:
                  return const Center(child: CircularProgressIndicator());

                case CubitStatus.success:
                  if (state.clubs.isEmpty) {
                    return RefreshIndicator(
                      onRefresh: () async => context
                          .read<ClubsOverviewBloc>()
                          .add(
                            ClubsOverviewEvent.clubsFetched(state.clubFilter),
                          ),
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: const Center(
                            child: Text('No clubs'),
                          ),
                        ),
                      ),
                    );
                  }
                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.clubs.length,
                      itemBuilder: (context, index) {
                        final club = state.clubs[index];
                        return ClubCard(club: club, index: index);
                      },
                    ),
                  );
              }
            },
          ),
        ],
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
      final clubFilter = context.read<ClubsOverviewBloc>().state.clubFilter;
      context
          .read<ClubsOverviewBloc>()
          .add(ClubsOverviewEvent.clubsFetched(clubFilter));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
