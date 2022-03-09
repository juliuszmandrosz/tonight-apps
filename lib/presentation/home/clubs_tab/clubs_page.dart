import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/cubit_status.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/clubs/filters/club_filter.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/bottom_loader.dart';
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
          //For testing ONLY, remove on production
          TextButton(
              onPressed: () async {
                final result = await getIt<ClubFacade>().addClub(Club(
                    clubName: "Black Diamond",
                    clubImageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/raver-1fec4.appspot.com/o/clubs%2FtLlSlPaZhRurTymJf9Aq%2Fclub_image%2Fclub_image.jpg?alt=media&token=cc18cc0c-4ae8-456f-a1d6-8e1ca5d00613",
                    reviewCount: 5,
                    reviewAvg: 5,
                    location: {'latitude': 0, 'longitude': 0},
                    locationString: "Bialystok, Stroma",
                    aboutUs: "Good club for all",
                    phoneNumber: "+48517853787",
                    socialMedia: {},
                    reviews: []));
                if (result.isSome()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Error while adding club"),
                    ),
                  );
                }
              },
              child: Text("Add club")),
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
                    child: RefreshIndicator(
                      onRefresh: () async => context
                          .read<ClubsOverviewBloc>()
                          .add(
                            ClubsOverviewEvent.clubsFetched(state.clubFilter),
                          ),
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.hasReachedMax
                            ? state.clubs.length
                            : state.clubs.length + 1,
                        itemBuilder: (context, index) {
                          return index >= state.clubs.length
                              ? const BottomLoader()
                              : ClubCard(
                                  club: state.clubs[index], index: index);
                        },
                        controller: _scrollController,
                      ),
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
