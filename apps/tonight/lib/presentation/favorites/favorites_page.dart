import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/favorites/widgets/favorite_clubs_list.dart';
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
            Align(
              alignment: Alignment.centerLeft,
              child: TonightHeadline(
                text: S().favoriteSpots,
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 20),
            const FavoriteClubsList(),
          ],
        ),
      ),
    );
  }
}
