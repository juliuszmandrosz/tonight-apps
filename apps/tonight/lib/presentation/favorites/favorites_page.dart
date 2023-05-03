import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/favorites/widgets/favorite_clubs_list.dart';
import 'package:tonight/presentation/favorites/widgets/favorite_events_list.dart';
import 'package:translations/translations.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(title: S().favorites),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TonightHeadline(
                  text: S().favoriteClubs,
                  isSmallerVersion: true,
                ),
                const FaIcon(
                  FontAwesomeIcons.chevronRight,
                  size: 16,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const FavoriteClubsList(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TonightHeadline(
                  text: S().favoriteEvents,
                  isSmallerVersion: true,
                ),
                const FaIcon(
                  FontAwesomeIcons.chevronRight,
                  size: 16,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const FavoriteEventsList(),
          ],
        ),
      ),
    );
  }
}
