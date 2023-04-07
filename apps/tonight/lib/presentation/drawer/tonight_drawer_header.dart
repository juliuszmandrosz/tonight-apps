import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/profile/profile_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';

class TonightDrawerHeader extends StatelessWidget {
  const TonightDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final userProfile = state.userProfile.getOrCrash();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfilePictureContainer(
              imageSize: 80,
              username: userProfile.username,
              profilePictureUrl: userProfile.profilePictureUrl,
            ),
            const SizedBox(height: 20),
            TonightHeadline(
              text: userProfile.username,
              isSmallerVersion: true,
            ),
          ],
        );
      },
    );
  }
}
