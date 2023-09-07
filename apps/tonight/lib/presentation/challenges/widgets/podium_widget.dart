import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/domain/challenges/winner_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class PodiumWidget extends StatelessWidget {
  final Challenge challenge;

  const PodiumWidget({required this.challenge, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getMedalColor(int place) {
      switch (place) {
        case 1:
          return const Color(0xFFFFD700).darken(.05);
        case 2:
          return const Color(0xFFC0C0C0);
        case 3:
          return const Color(0xFFA67D3D);
        default:
          return Colors.grey;
      }
    }

    Color getHighlightMedalColor(int place) {
      switch (place) {
        case 1:
          return const Color(0xFFFFE4B5);
        case 2:
          return const Color(0xFFD6D6D6);
        case 3:
          return const Color(0xFFBCA075);
        default:
          return Colors.grey[200]!;
      }
    }

    Widget buildShimmeringMedal(int place) {
      return Shimmer.fromColors(
        baseColor: getMedalColor(place),
        highlightColor: getHighlightMedalColor(place),
        child: Icon(
          Icons.circle,
          color: getMedalColor(place),
          size: 24,
        ),
      );
    }

    Widget buildWinnerTile(
      Winner? winner,
      int position,
      double scale,
      Color medalColor,
    ) {
      if (winner == null) {
        return SizedBox(
          width: 100 * scale,
          child: Column(
            children: [
              buildShimmeringMedal(position),
              const SizedBox(height: 12),
              ProfilePictureContainer(
                username: '',
                profilePictureUrl: '',
                textColor: Colors.black,
                backgroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 20 * scale),
                imageSize: 60 * scale,
                isUserDeleted: true,
              ),
              SizedBox(height: 10 * scale),
              AutoSizeText(
                'Brak',
                style: TextStyle(fontSize: 18 * scale),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                // TODO - add translation
                '$position miejsce',
                style: TextStyle(
                  fontSize: 16 * scale,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      }
      return InkWell(
        onTap: () {
          if (winner.id.isEmpty) return;
          context.pushRoute(UserDetailsRoute(userId: winner.id));
        },
        child: SizedBox(
          width: 100 * scale,
          child: Column(
            children: [
              buildShimmeringMedal(position),
              const SizedBox(height: 12),
              ProfilePictureContainer(
                username: winner.username,
                profilePictureUrl: winner.profilePictureUrl,
                textColor: context.surfaceColor,
                backgroundColor: context.onSurfaceColor,
                textStyle: TextStyle(fontSize: 18 * scale),
                imageSize: 60 * scale,
                isUserDeleted: winner.id.isEmpty,
              ),
              SizedBox(height: 10 * scale),
              AutoSizeText(
                winner.username,
                style: TextStyle(fontSize: 18 * scale),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(
                // TODO - add translation
                '$position miejsce',
                style: TextStyle(
                  fontSize: 16 * scale,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${winner.likesCount} głosów',
                style: context.bodySmall.copyWithSecondaryColor(),
              ),
            ],
          ),
        ),
      );
    }

    final firstPlace = challenge.winners.tryGet(0);
    final secondPlace = challenge.winners.tryGet(1);
    final thirdPlace = challenge.winners.tryGet(2);

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.surfaceColor.lighten(.2),
            context.surfaceColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 4),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            challenge.title,
            style: context.titleMedium,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildWinnerTile(secondPlace, 2, 0.8, Color(0xFFC0C0C0)),
              buildWinnerTile(firstPlace, 1, 1.0, const Color(0xFFD4AF37)),
              buildWinnerTile(thirdPlace, 3, 0.7, const Color(0xFFCD7F32)),
            ],
          ),
        ],
      ),
    );
  }
}
