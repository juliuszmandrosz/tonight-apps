import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/challenges/challenges_cubit.dart';
import 'package:translations/translations.dart';

class NoChallengesInfo extends StatelessWidget {
  const NoChallengesInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          // TODO - add translation
          'No challenges yet.',
          style: context.titleSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: context.read<ChallengesCubit>().getChallenges,
          child: Text(S().refresh),
        ),
      ],
    );
  }
}
