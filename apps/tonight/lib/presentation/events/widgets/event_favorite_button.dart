import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/events/event_favorite/event_favorite_cubit.dart';

class EventFavoriteButton extends StatelessWidget {
  final Event event;

  const EventFavoriteButton({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventFavoriteCubit, EventFavoriteState>(
      listener: (ctx, state) {
        state.snackbarMessage.fold(
          () {},
          (message) => context.showSnackbarMessage(message),
        );
      },
      builder: (context, state) {
        final isFavorite = state.favoriteEvents.any((e) => e.id == event.id);
        return state.status == CubitStatus.loading
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
                          .read<EventFavoriteCubit>()
                          .toggleEventFavoriteStatus(event),
                ),
              );
      },
    );
  }
}
