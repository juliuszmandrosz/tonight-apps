import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_toggle_icon.dart';
import 'package:raver_clubs/domain/club/club_entity.dart';
import 'package:raver_common/raver_common.dart';

class ClubDetailsFavoriteButton extends StatelessWidget {
  final Club club;

  const ClubDetailsFavoriteButton({required this.club, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClubFavoriteCubit, ClubFavoriteState>(
      listener: (context, state) {
        state.errorMessage.fold(
          () {},
          (error) => context.showSnackbarMessage(error),
        );
      },
      builder: (context, state) {
        final isFavorite = state.favoriteClubs.contains(club);
        return RaverToggleIcon(
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
