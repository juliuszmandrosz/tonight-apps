import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:tonight/presentation/clubs/widgets/club_card.dart';
import 'package:translations/translations.dart';

class FavoriteClubsList extends StatelessWidget {
  static const heroPhrase = 'favoriteClubsHero';

  const FavoriteClubsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubFavoriteCubit, ClubFavoriteState>(
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: context.read<ClubFavoriteCubit>().getFavoriteClubs,
            );

          case CubitStatus.initial:
            return const SizedBox.shrink();

          case CubitStatus.loading:
            return const WaveLoadingIndicator();

          case CubitStatus.success:
            return state.favoriteClubs.isEmpty
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S().favoriteSpotsInfo,
                      style: context.bodyMedium.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                  )
                : SizedBox(
                    height: 280,
                    child: PageView.builder(
                      padEnds: false,
                      controller: PageController(viewportFraction: 0.85),
                      itemCount: state.favoriteClubs.length,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: i == 0 ? 0 : 4,
                            right: i == state.favoriteClubs.length - 1 ? 0 : 4,
                          ),
                          child: ClubCard(
                            club: state.favoriteClubs[i],
                            heroPhrase: heroPhrase,
                            isFavoriteCard: true,
                            height: 200,
                          ),
                        );
                      },
                    ),
                  );
        }
      },
    );
  }
}
