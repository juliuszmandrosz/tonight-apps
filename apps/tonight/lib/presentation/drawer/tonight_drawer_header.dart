import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/domain/user_profile/user_profile_model.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';

class TonightDrawerHeader extends StatelessWidget {
  const TonightDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, UserProfile>(
      selector: (state) => state.userProfile.getOrCrash(),
      builder: (context, profile) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfilePictureContainer(
              imageSize: 80,
              username: profile.username,
              profilePictureUrl: profile.profilePictureUrl,
              isOnSurfaceColor: true,
            ),
            const SizedBox(height: 20),
            TonightHeadline(
              text: profile.username,
              isSmallerVersion: true,
            ),
          ],
        );
      },
    );
  }
}
