import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:tonight/presentation/commons/icons/tonight_toggle_icon.dart';

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
        final isFavorite = state.favoriteEvents.contains(event);
        return state.status == CubitStatus.loading
            ? Padding(
                padding: const EdgeInsets.all(4),
                child: SpinKitThreeBounce(
                  color: context.onSurfaceColor,
                  size: 24,
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.surfaceColor,
                ),
                child: TonightToggleIcon(
                  onIcon: const FaIcon(FontAwesomeIcons.solidHeart),
                  onPressed: () => state.isChangingFavoriteStatus
                      ? null
                      : context
                          .read<EventFavoriteCubit>()
                          .toggleEventFavoriteStatus(event),
                  offIcon: const FaIcon(FontAwesomeIcons.heart),
                  value: isFavorite,
                ),
              );
      },
    );
  }
}
