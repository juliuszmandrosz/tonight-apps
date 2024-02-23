import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/artist_details/artist_details_cubit.dart';
import 'package:tonight/presentation/artist_details/widgets/collective_tile.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/events/event_shimmer.dart';

class ArtistCollectives extends HookWidget {
  final String artistId;

  const ArtistCollectives({super.key, required this.artistId});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      _refreshCollectives(context);
      return null;
    }, const []);

    return Column(
      children: [
        Expanded(
          child: BlocBuilder<ArtistDetailsCubit, ArtistDetailsState>(
            builder: (context, state) {
              switch (state.getCollectivesStatus) {
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
                    retryCallback: () => _refreshCollectives(context),
                  );

                case CubitStatus.success:
                  return state.collectives.isEmpty
                      ? NoResults(
                          // TODO - add translation
                          message: 'No collectives',
                          onRefresh: () => _refreshCollectives(context))
                      : RefreshIndicator(
                          onRefresh: () async => _refreshCollectives(context),
                          child: ListView.separated(
                            itemCount: state.collectives.length,
                            itemBuilder: (_, i) => CollectiveTile(
                              collective: state.collectives[i],
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

  _refreshCollectives(BuildContext context) {
    context.read<ArtistDetailsCubit>().getCollectives(artistId);
  }
}
