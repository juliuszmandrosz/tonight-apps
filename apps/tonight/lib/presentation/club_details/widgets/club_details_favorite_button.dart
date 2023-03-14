import 'package:clubs/domain/club/club_entity.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:tonight/presentation/commons/icons/tonight_toggle_icon.dart';

class ClubDetailsFavoriteButton extends StatelessWidget {
  final Club club;

  const ClubDetailsFavoriteButton({required this.club, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClubFavoriteCubit, ClubFavoriteState>(
      listener: (context, state) {
        state.snackbarMessage.fold(
          () {},
          (error) => context.showSnackbarMessage(error),
        );
      },
      builder: (context, state) {
        final isFavorite = state.favoriteClubs.contains(club);
        return TonightToggleIcon(
          onIcon: const FaIcon(FontAwesomeIcons.solidHeart),
          onPressed: () =>
              context.read<ClubFavoriteCubit>().toggleClubFavoriteStatus(club),
          offIcon: const FaIcon(FontAwesomeIcons.heart),
          value: isFavorite,
        );
      },
    );
  }
}
