import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/favorites/widgets/favorite_clubs_list.dart';
import 'package:tonight/presentation/favorites/widgets/favorite_events_list.dart';
import 'package:translations/translations.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TonightHeadline(text: S().favoriteClubs),
          ),
          const SizedBox(height: 20),
          const FavoriteClubsList(),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: TonightHeadline(text: S().favoriteEvents),
          ),
          const SizedBox(height: 20),
          const FavoriteEventsList(),
        ],
      ),
    );
  }
}
