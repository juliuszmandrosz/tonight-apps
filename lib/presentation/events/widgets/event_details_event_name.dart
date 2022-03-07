import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class EventDetailsEventName extends StatelessWidget {
  final Event event;

  const EventDetailsEventName({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocConsumer<EventFavoriteCubit, EventFavoriteState>(
      listener: (context, state) {
        state.failureOption.fold(
          () {},
          (failure) => ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: failure.map(
                  unexpected: ((_) => const Text(
                      'Error loading information about favorite events')),
                  toggleFavoriteEventFailure: ((_) =>
                      const Text('Error while changing event status')),
                ),
              ),
            ),
        );
      },
      builder: (context, state) {
        final isFavorite = state.favoriteEventIds.any((id) => id == event.id);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              event.eventName,
              style: textTheme.headline1,
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () => context
                  .read<EventFavoriteCubit>()
                  .toggleEventFavoriteStatus(event.id),
              icon: isFavorite
                  ? const FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: DefaultColors.warningColor,
                    )
                  : const FaIcon(
                      FontAwesomeIcons.heart,
                      color: DefaultColors.warningColor,
                    ),
            ),
          ],
        );
      },
    );
  }
}
