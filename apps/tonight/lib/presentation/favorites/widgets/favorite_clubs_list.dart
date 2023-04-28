import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:tonight/presentation/clubs/widgets/club_card.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class FavoriteClubsList extends StatelessWidget {
  static const heroPhrase = 'favoriteClubsHero';

  const FavoriteClubsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClubFavoriteCubit, ClubFavoriteState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () =>
                  context.read<ClubFavoriteCubit>().getFavoriteClubs(),
            ),
          );
        }
      },
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.failure:
            return const SizedBox.shrink();

          case CubitStatus.initial:
            return const SizedBox.shrink();

          case CubitStatus.loading:
            return const WaveLoadingIndicator();

          case CubitStatus.success:
            return state.favoriteClubs.isEmpty
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S().favoriteClubsInfo,
                      style: context.bodyMedium.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                  )
                : SizedBox(
                    height: 280,
                    child: PageView.builder(
                      itemCount: state.favoriteClubs.length,
                      itemBuilder: (ctx, i) {
                        return ClubCard(
                          club: state.favoriteClubs[i],
                          heroPhrase: heroPhrase,
                          isFavoriteCard: true,
                          height: 200,
                        );
                      },
                    ),
                  );
        }
      },
    );
  }
}
