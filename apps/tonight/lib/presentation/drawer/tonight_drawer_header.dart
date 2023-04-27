import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/domain/user_profile/user_profile_model.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';

class TonightDrawerHeader extends StatelessWidget {
  const TonightDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, Option<UserProfile>>(
      selector: (state) => state.userProfile,
      builder: (context, userProfile) {
        return userProfile.fold(
          () => const WaveLoadingIndicator(),
          (profile) => Column(
            children: [
              ProfilePictureContainer(
                imageSize: 100,
                username: profile.username,
                profilePictureUrl: profile.profilePictureUrl,
                textStyle: context.headlineMedium,
                backgroundColor: context.onSurfaceColor,
                textColor: context.surfaceColor,
              ),
              const SizedBox(height: 16),
              TonightHeadline(
                text: profile.username,
                isSmallerVersion: true,
              ),
            ],
          ),
        );
      },
    );
  }
}
