import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/profile/widgets/profile_menu_tiles.dart';
import 'package:raver/presentation/profile/widgets/social_media/social_media_row.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/generated/l10n.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.initial:
            return Container();
          case CubitStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case CubitStatus.failure:
            return Center(
              child: Text(S().errorLoadingProfile),
            );
          case CubitStatus.success:
            return Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.surfaceColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaverHeadline(
                          text: state.user.username.substring(0, 2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  RaverHeadline(text: state.user.username),
                  const SizedBox(height: 20),
                  RaverHeadline(
                    text: state.user.email,
                    isSmallerVersion: true,
                  ),
                  const SizedBox(height: 30),
                  const SocialMediaRow(),
                  const SizedBox(height: 20),
                  const ProfileMenuTiles(),
                ],
              ),
            );
        }
      },
    );
  }
}
