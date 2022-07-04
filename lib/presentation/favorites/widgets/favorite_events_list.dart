import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/presentation/events/widgets/event_card.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class FavoriteEventsList extends StatelessWidget {
  const FavoriteEventsList({Key? key}) : super(key: key);
  static const heroPhrase = 'favoritesPageHero';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventFavoriteCubit, EventFavoriteState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () =>
                  context.read<EventFavoriteCubit>().getFavoriteEvents(),
            ),
          );
        }
      },
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );

          case CubitStatus.success:
            return state.favoriteEvents.isEmpty
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S().favoriteEventsInfo,
                      style: context.bodyText2.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                  )
                : SizedBox(
                    height: 345,
                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.9),
                      itemCount: state.favoriteEvents.length,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: i == 0
                              ? const EdgeInsets.only(right: 5)
                              : i == state.favoriteEvents.length - 1
                                  ? const EdgeInsets.only(left: 5)
                                  : const EdgeInsets.symmetric(horizontal: 5),
                          child: EventCard(
                            event: state.favoriteEvents[i],
                            isFavoriteCard: true,
                            heroPhrase: heroPhrase,
                          ),
                        );
                      },
                    ),
                  );
          case CubitStatus.failure:
            return Container();

          case CubitStatus.initial:
            return Container();
        }
      },
    );
  }
}
