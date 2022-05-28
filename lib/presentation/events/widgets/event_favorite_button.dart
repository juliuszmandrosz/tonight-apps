import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_toggle_icon.dart';
import 'package:raver_common/raver_common.dart';

class EventFavoriteButton extends StatelessWidget {
  final String eventId;

  const EventFavoriteButton({
    Key? key,
    required this.eventId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventFavoriteCubit, EventFavoriteState>(
      listener: (ctx, state) {
        state.errorMessage.fold(
          () {},
          (error) => context.showSnackbarMessage(error),
        );
      },
      builder: (context, state) {
        final isFavorite = state.favoriteEventIds.contains(eventId);
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
                child: RaverToggleIcon(
                  onIcon: const FaIcon(FontAwesomeIcons.solidHeart),
                  onPressed: () => state.isChangingFavoriteStatus
                      ? null
                      : context
                          .read<EventFavoriteCubit>()
                          .toggleEventFavoriteStatus(
                            eventId,
                          ),
                  offIcon: const FaIcon(FontAwesomeIcons.heart),
                  value: isFavorite,
                ),
              );
      },
    );
  }
}
