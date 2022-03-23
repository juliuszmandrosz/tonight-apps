import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_toggle_icon.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class EventDetailsFavoriteButton extends StatelessWidget {
  final String eventId;

  const EventDetailsFavoriteButton({Key? key, required this.eventId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventFavoriteCubit, EventFavoriteState>(
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
        final isFavorite = state.favoriteEventIds.contains(eventId);
        return RaverToggleIcon(
            onIcon: const FaIcon(
              FontAwesomeIcons.solidHeart,
              color: DefaultColors.warningColor,
            ),
            onPressed: () => context
                .read<EventFavoriteCubit>()
                .toggleEventFavoriteStatus(eventId),
            offIcon: const FaIcon(
              FontAwesomeIcons.heart,
              color: DefaultColors.warningColor,
            ),
            value: isFavorite);
      },
    );
  }
}
