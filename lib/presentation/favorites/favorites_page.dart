import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/user_favorites/club_favorites/user_club_favorites_cubit.dart';
import 'package:raver/application/user_favorites/event_favorites/user_event_favorites_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/favorites/widgets/favorite_clubs_list.dart';
import 'package:raver/presentation/favorites/widgets/favorite_events_list.dart';
import 'package:raver_translations/raver_translations.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<UserEventFavoritesCubit>()..getFavorites(),
        ),
        BlocProvider(
          create: (ctx) => getIt<UserClubFavoritesCubit>()..getFavorites(),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S().favoriteEvents, style: textTheme.headline2),
            const FavoriteEventsList(),
            Text(S().favoriteClubs, style: textTheme.headline2),
            const FavoriteClubsList(),
          ],
        ),
      ),
    );
  }
}
