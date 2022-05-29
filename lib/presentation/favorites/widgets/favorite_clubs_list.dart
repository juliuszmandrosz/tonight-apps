import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/user_favorites/club_favorites/user_club_favorites_cubit.dart';
import 'package:raver/presentation/clubs/widgets/club_card.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class FavoriteClubsList extends StatelessWidget {
  static const heroPhrase = "favoritesPageHero";

  const FavoriteClubsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserClubFavoritesCubit, UserClubFavoritesState>(
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );

          case CubitStatus.success:
            return state.clubs.isEmpty
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      S().emptyFavoriteClubsMessage,
                      style: context.bodyText2,
                      maxLines: 1,
                    ),
                  )
                : SizedBox(
                    height: 315,
                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.9),
                      itemCount: state.clubs.length,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: i == 0
                              ? const EdgeInsets.only(right: 5)
                              : i == state.clubs.length - 1
                                  ? const EdgeInsets.only(left: 5)
                                  : const EdgeInsets.symmetric(horizontal: 5),
                          child: ClubCard(
                            club: state.clubs[i],
                            index: i,
                            heroPhrase: heroPhrase,
                            isFavoriteCard: true,
                          ),
                        );
                      },
                    ),
                  );

          case CubitStatus.failure:
            return Center(
              child: Text(S().errorLoadingFavoriteClubsInfo),
            );

          case CubitStatus.initial:
            return Container();
        }
      },
    );
  }
}
