import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/profile/widgets/profile_menu_tiles.dart';
import 'package:raver/presentation/profile/widgets/social_media/social_media_row.dart';
import 'package:raver/presentation/profile/widgets/username_row.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () =>
                  context.read<ProfileCubit>().getUserProfile(),
            ),
          );
        }
      },
      builder: (context, state) {
        switch (state.status) {
          case CubitStatus.initial:
            return Container();
          case CubitStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case CubitStatus.failure:
            return Container();
          case CubitStatus.success:
            return Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
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
                            text: state.user.username
                                .substring(0, 2)
                                .toUpperCase(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    UsernameRow(username: state.user.username),
                    const SizedBox(height: 20),
                    AutoSizeText(
                      state.user.email,
                      style: context.subtitle1
                          .copyWith(color: context.secondaryColor),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 30),
                    const SocialMediaRow(),
                    const SizedBox(height: 20),
                    const ProfileMenuTiles(),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
            );
        }
      },
    );
  }
}
