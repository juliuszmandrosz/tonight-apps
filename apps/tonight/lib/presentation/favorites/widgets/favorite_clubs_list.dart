import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/presentation/clubs/widgets/club_card.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
          case CubitStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );

          case CubitStatus.success:
            return state.favoriteClubs.isEmpty
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S().favoriteClubsInfo,
                      style: context.bodyText2.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                  )
                : SizedBox(
                    height: 345,
                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.9),
                      itemCount: state.favoriteClubs.length,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: i == 0
                              ? const EdgeInsets.only(right: 5)
                              : i == state.favoriteClubs.length - 1
                                  ? const EdgeInsets.only(left: 5)
                                  : const EdgeInsets.symmetric(horizontal: 5),
                          child: ClubCard(
                            club: state.favoriteClubs[i],
                            heroPhrase: heroPhrase,
                            isFavoriteCard: true,
                          ),
                        );
                      },
                    ),
                  );

          case CubitStatus.failure:
            return Container();

          case CubitStatus.initial:
            return Container();
        }
      },
    );
  }
}
