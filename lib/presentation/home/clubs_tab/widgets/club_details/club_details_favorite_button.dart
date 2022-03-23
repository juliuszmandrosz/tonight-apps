import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_toggle_icon.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class ClubDetailsFavoriteButton extends StatelessWidget {
  final String clubId;

  const ClubDetailsFavoriteButton({Key? key, required this.clubId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClubFavoriteCubit, ClubFavoriteState>(
      listener: (context, state) {
        state.errorMessage.fold(
          () {},
          (error) => ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(error)),
            ),
        );
      },
      builder: (context, state) {
        final isFavorite = state.favoriteClubIds.contains(clubId);
        return RaverToggleIcon(
            onIcon: const FaIcon(
              FontAwesomeIcons.solidHeart,
              color: DefaultColors.warningColor,
            ),
            onPressed: () => context
                .read<ClubFavoriteCubit>()
                .toggleClubFavoriteStatus(clubId),
            offIcon: const FaIcon(
              FontAwesomeIcons.heart,
              color: DefaultColors.warningColor,
            ),
            value: isFavorite);
      },
    );
  }
}
