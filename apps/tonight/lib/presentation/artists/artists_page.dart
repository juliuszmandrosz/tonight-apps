import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/artists/artists_cubit.dart';
import 'package:tonight/application/discover/discover_cubit.dart';
import 'package:tonight/presentation/artists/widgets/artist_card.dart';

class ArtistsPage extends HookWidget {
  const ArtistsPage({super.key});

  static const heroPhrase = 'artistsPageHero';

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final phraseFilter = context.read<DiscoverCubit>().state.phraseFilter;
      context.read<ArtistsCubit>().searchArtists(phraseFilter.phrase);
      return null;
    }, const []);

    return BlocBuilder<ArtistsCubit, ArtistsState>(
      builder: (context, state) {
        switch (state.getArtistsStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();

          case CubitStatus.loading:
            return const WaveLoadingIndicator();

          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: context.read<ArtistsCubit>().refreshArtists,
              isSocketException: false,
            );

          case CubitStatus.success:
            return state.artists.isEmpty
                ? NoResults(
                    // TODO - add translation
                    onRefresh: context.read<ArtistsCubit>().refreshArtists,
                    message: 'No artists found',
                  )
                : RefreshIndicator(
                    onRefresh: () async =>
                        context.read<ArtistsCubit>().refreshArtists(),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.artists.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (_, i) => ArtistCard(
                        artist: state.artists[i],
                        heroPhrase: heroPhrase,
                      ),
                    ),
                  );
        }
      },
    );
  }
}
