import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/user_favorites/event_favorites/user_event_favorites_cubit.dart';
import 'package:raver/presentation/events/widgets/event_card.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class FavoriteEventsList extends StatelessWidget {
  const FavoriteEventsList({Key? key}) : super(key: key);
  static const heroPhrase = 'favoritesPageHero';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserEventFavoritesCubit, UserEventFavoritesState>(
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );

          case CubitStatus.success:
            return state.events.isEmpty
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      S().emptyFavoriteEventsMessage,
                      style: context.bodyText2,
                      maxLines: 1,
                    ),
                  )
                : SizedBox(
                    height: 345,
                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.9),
                      itemCount: state.events.length,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: i == 0
                              ? const EdgeInsets.only(right: 5)
                              : i == state.events.length - 1
                                  ? const EdgeInsets.only(left: 5)
                                  : const EdgeInsets.symmetric(horizontal: 5),
                          child: EventCard(
                            event: state.events[i],
                            isFavoriteCard: true,
                            heroPhrase: heroPhrase,
                          ),
                        );
                      },
                    ),
                  );
          case CubitStatus.failure:
            return Center(
              child: Text(S().errorLoadingFavoriteEventsInfo),
            );

          case CubitStatus.initial:
            return Container();
        }
      },
    );
  }
}
