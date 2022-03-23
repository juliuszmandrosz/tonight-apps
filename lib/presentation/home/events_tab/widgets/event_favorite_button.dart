import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_toggle_icon.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver_common/raver_common.dart';

class EventFavoriteButton extends StatelessWidget {
  final String eventId;

  const EventFavoriteButton({
    Key? key,
    required this.eventId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<EventFavoriteCubit, EventFavoriteState>(
      listener: (ctx, state) {
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
        return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: DefaultColors.navbarUnselectedColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: state.status == CubitStatus.loading
              ? Padding(
                  padding: const EdgeInsets.all(4),
                  child: SpinKitThreeBounce(
                    color: theme.backgroundColor,
                    size: 24,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(4),
                  child: RaverToggleIcon(
                    onIcon: const Icon(
                      Icons.favorite,
                      size: 24,
                    ),
                    onPressed: () => state.isChangingFavoriteStatus
                        ? null
                        : context
                            .read<EventFavoriteCubit>()
                            .toggleEventFavoriteStatus(
                              eventId,
                            ),
                    offIcon: const Icon(
                      Icons.favorite_border,
                      size: 24,
                    ),
                    value: isFavorite,
                  ),
                ),
        );
      },
    );
  }
}
