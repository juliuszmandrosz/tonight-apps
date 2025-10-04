import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/collective_details/collective_details_bloc.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/events/event_shimmer.dart';
import 'package:tonight/presentation/collective_details/collective_details_tabs/artist_tile.dart';

class CollectiveArtists extends HookWidget {
  final String collectiveId;

  const CollectiveArtists({super.key, required this.collectiveId});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      _refreshArtists(context);
      return null;
    }, const []);

    return Column(
      children: [
        Expanded(
          child: BlocBuilder<CollectiveDetailsBloc, CollectiveDetailsState>(
            builder: (context, state) {
              switch (state.getArtistsStatus) {
                case CubitStatus.initial:
                  return const SizedBox.shrink();

                case CubitStatus.loading:
                  return ListView.separated(
                    itemCount: 4,
                    separatorBuilder: (_, __) => const SizedBox(height: 20),
                    itemBuilder: (context, index) => const EventShimmer(),
                  );

                case CubitStatus.failure:
                  return FailureInfo(
                    retryCallback: () => _refreshArtists(context),
                  );

                case CubitStatus.success:
                  return state.artists.isEmpty
                      ? NoResults(
                          // TODO - add translation
                          message: 'No residents found',
                          onRefresh: () => _refreshArtists(context))
                      : RefreshIndicator(
                          onRefresh: () async => _refreshArtists(context),
                          child: ListView.separated(
                            itemCount: state.artists.length,
                            itemBuilder: (_, i) => ArtistTile(
                              artist: state.artists[i],
                            ),
                            separatorBuilder: (_, __) => const Divider(),
                          ),
                        );
              }
            },
          ),
        )
      ],
    );
  }

  _refreshArtists(BuildContext context) {
    context
        .read<CollectiveDetailsBloc>()
        .add(CollectiveDetailsEvent.artistsFetched(collectiveId));
  }
}
