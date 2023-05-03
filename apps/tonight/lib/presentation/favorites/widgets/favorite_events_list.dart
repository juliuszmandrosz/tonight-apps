import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:tonight/presentation/events/widgets/event_card.dart';
import 'package:translations/translations.dart';

class FavoriteEventsList extends StatelessWidget {
  const FavoriteEventsList({Key? key}) : super(key: key);
  static const heroPhrase = 'favoriteEventsHero';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFavoriteCubit, EventFavoriteState>(
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback:
                  context.read<EventFavoriteCubit>().getFavoriteEvents,
            );

          case CubitStatus.initial:
            return const SizedBox.shrink();

          case CubitStatus.loading:
            return const WaveLoadingIndicator();

          case CubitStatus.success:
            return state.favoriteEvents.isEmpty
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S().favoriteEventsInfo,
                      style: context.bodyMedium.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                  )
                : SizedBox(
                    height: 280,
                    child: PageView.builder(
                      itemCount: state.favoriteEvents.length,
                      itemBuilder: (ctx, i) {
                        return EventCard(
                          event: state.favoriteEvents[i],
                          isFavoriteCard: true,
                          heroPhrase: heroPhrase,
                          height: 200,
                        );
                      },
                    ),
                  );
        }
      },
    );
  }
}
