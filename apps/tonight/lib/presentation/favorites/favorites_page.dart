import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/favorites/widgets/favorite_clubs_list.dart';
import 'package:tonight/presentation/favorites/widgets/favorite_events_list.dart';
import 'package:translations/translations.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S().favorites),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TonightHeadline(
                text: S().favoriteClubs,
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 20),
            const FavoriteClubsList(),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: TonightHeadline(
                text: S().favoriteEvents,
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 20),
            const FavoriteEventsList(),
          ],
        ),
      ),
    );
  }
}
