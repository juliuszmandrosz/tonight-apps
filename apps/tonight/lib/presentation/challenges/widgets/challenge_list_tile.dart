import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tonight/application/challenges/challenges_cubit.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_confirm_phone_number_dialog.dart';
import 'package:translations/translations.dart';

class ChallengeListTile extends StatelessWidget {
  final Challenge challenge;
  final int index;

  const ChallengeListTile({
    required this.challenge,
    required this.index,
    Key? key,
  }) : super(key: key);

  Color getMedalColor(int place) {
    switch (place) {
      case 1:
        return const Color(0xFFD1B280);
      case 2:
        return const Color(0xFFB0B0B0);
      case 3:
        return const Color(0xFFA67D3D);
      default:
        return Colors.grey;
    }
  }

  Color getHighlightMedalColor(int place) {
    switch (place) {
      case 1:
        return const Color(0xFFFFD9A5);
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
        size: 14,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO - add translations
    return Stack(
      children: [
        Shimmer.fromColors(
          period: const Duration(seconds: 4),
          baseColor: context.primaryColor,
          highlightColor: context.secondaryColor.darken(.1),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  context.primaryColor,
                  context.secondaryColor.darken(.1),
                ],
              ),
            ),
            child: DenseListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              title: Text(
                challenge.title,
                // style: TextStyle(
                //   fontSize: 16,
                //   fontWeight: FontWeight.w600,
                //   color: Colors.transparent, // Ukryj tekst
                //   background: Paint()..color = Colors.white,
                // ),
                style: context.titleMedium.copyWith(color: Colors.transparent),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: challenge.rewards.entries.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.circle, size: 12,
                            color: Colors.transparent, // Ukryj ikonę
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${e.key} miejsce -  ${e.value} tokenów',
                            style: context.titleSmall.copyWith(
                              color: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              trailing: ElevatedButton(
                onPressed: null, // Dezaktywuj przycisk
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(color: Colors.transparent),
                ),
                child: const Text(
                  'Dołącz',
                  style: TextStyle(color: Colors.transparent),
                ),
              ),
            ),
          ),
        ),
        DenseListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          title: Text(
            challenge.title,
            style: context.titleMedium,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: challenge.rewards.entries.map((e) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      buildShimmeringMedal(e.key),
                      const SizedBox(width: 8),
                      Text(
                        '${e.key} miejsce -  ${e.value} tokenów',
                        style: context.titleSmall,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          trailing: ElevatedButton.icon(
            onPressed: () async {
              if (!context.read<AuthCubit>().checkIfPhoneNumberIsVerified()) {
                final result = await showConfirmPhoneNumberDialog(context);
                if (result != true) return;
              }
              if (context.mounted) {
                final alreadyAttendedResult = await context
                    .read<ChallengesCubit>()
                    .checkIfUserAlreadyAttended(challenge.id);

                if (alreadyAttendedResult.isLeft() && context.mounted) {
                  context.showSnackbarMessage(S().serverError);
                  return;
                }

                if (alreadyAttendedResult.getRightOrCrash() &&
                    context.mounted) {
                  // TODO - add translation
                  context.showSnackbarMessage(
                      'Uczestniczysz już w tym wyzwaniu, usuń swoją story aby dołączyć ponownie');
                  return;
                }
                final cameras = await availableCameras();
                if (context.mounted) {
                  context.pushRoute(
                    AddChallengeStoryRoute(
                      challenge: challenge,
                      cameras: cameras,
                    ),
                  );
                }
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              side: const BorderSide(color: Colors.white, width: 1.0),
            ),
            icon: const Icon(
              Icons.add_a_photo,
              size: 20,
            ),
            label: Text(S().join),
          ),
        ),
      ],
    );
  }
}
