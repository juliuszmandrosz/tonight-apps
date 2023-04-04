import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:tonight/presentation/commons/icons/tonight_toggle_icon.dart';

class EventDetailsFavoriteButton extends StatelessWidget {
  final Event event;

  const EventDetailsFavoriteButton({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventFavoriteCubit, EventFavoriteState>(
      listener: (context, state) {
        state.snackbarMessage.fold(
          () {},
          (message) => context.showSnackbarMessage(message),
        );
      },
      builder: (context, state) {
        final isFavorite = state.favoriteEvents.contains(event);
        return TonightToggleIcon(
          onIcon: const FaIcon(FontAwesomeIcons.solidHeart),
          onPressed: () => context
              .read<EventFavoriteCubit>()
              .toggleEventFavoriteStatus(event),
          offIcon: const FaIcon(FontAwesomeIcons.heart),
          value: isFavorite,
        );
      },
    );
  }
}
