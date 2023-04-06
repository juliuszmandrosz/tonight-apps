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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfilePictureContainer(
              imageSize: 80,
              username: state.user.username,
              profilePictureUrl: state.user.profilePictureUrl,
            ),
            const SizedBox(height: 20),
            TonightHeadline(
              text: state.user.username,
              isSmallerVersion: true,
            ),
          ],
        );
      },
    );
  }
}
