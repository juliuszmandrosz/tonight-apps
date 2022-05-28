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
                ? Center(
                    child: Text(S().emptyFavoriteClubsMessage),
                  )
                : SizedBox(
                    height: 230,
                    child: PageView.builder(
                      onPageChanged: (index) => context
                          .read<UserClubFavoritesCubit>()
                          .changePageIndex(index),
                      controller: PageController(viewportFraction: 0.7),
                      itemCount: state.clubs.length,
                      itemBuilder: (ctx, i) {
                        return Transform.scale(
                            scale: i == state.currentVisibleIndex ? 1 : 0.9,
                            child: ClubCard(
                              club: state.clubs[i],
                              index: i,
                              heroPhrase: heroPhrase,
                            ));
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
