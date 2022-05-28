import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/user_favorites/event_favorites/user_event_favorites_cubit.dart';
import 'package:raver_common/application/application.dart';
import 'package:raver_translations/raver_translations.dart';

import '../../events/widgets/event_card.dart';

class FavoriteEventsList extends StatelessWidget {
  const FavoriteEventsList({Key? key}) : super(key: key);

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
                ? Center(
                    child: Text(S().emptyFavoriteEventsMessage),
                  )
                : SizedBox(
                    //TODO: Need to fetch size of card here and pass it to height
                    height: 230,
                    child: PageView.builder(
                      onPageChanged: (index) => context
                          .read<UserEventFavoritesCubit>()
                          .changePageIndex(index),
                      controller: PageController(viewportFraction: 0.7),
                      itemCount: state.events.length,
                      itemBuilder: (ctx, i) {
                        return Transform.scale(
                            scale: i == state.currentVisibleIndex ? 1 : 0.9,
                            child: EventCard(event: state.events[i]));
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
