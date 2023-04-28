import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/clubs/club_favorite/club_favorite_cubit.dart';

class ClubFavoriteButton extends StatelessWidget {
  final Club club;

  const ClubFavoriteButton({
    required this.club,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClubFavoriteCubit, ClubFavoriteState>(
      listener: (ctx, state) {
        state.snackbarMessage.fold(
          () {},
          (message) => context.showSnackbarMessage(message),
        );
      },
      builder: (context, state) {
        final isFavorite = state.favoriteClubs.contains(club);
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: state.status == CubitStatus.loading
              ? Padding(
                  padding: const EdgeInsets.all(4),
                  child: SpinKitThreeBounce(
                    color: context.onSurfaceColor,
                    size: 18,
                  ),
                )
              : Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.surfaceColor,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: isFavorite
                        ? const FaIcon(
                            FontAwesomeIcons.solidHeart,
                            size: 25,
                          )
                        : const FaIcon(
                            FontAwesomeIcons.heart,
                            size: 25,
                          ),
                    onPressed: () => state.isChangingFavoriteStatus
                        ? null
                        : context
                            .read<ClubFavoriteCubit>()
                            .toggleClubFavoriteStatus(club),
                  ),
                ),
        );
      },
    );
  }
}
