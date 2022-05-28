import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/profile/widgets/profile_menu.dart';
import 'package:raver/presentation/profile/widgets/social_media_row.dart';
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: RaverHeadline(
                            text: state.user.username.substring(0, 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaverHeadline(text: state.user.username),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.user.email,
                        style: context.subtitle1,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              '${state.user.ticketCount}',
                              style: context.subtitle1,
                            ),
                            Text(
                              S().events(2),
                              style: context.subtitle1,
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          width: 20,
                          thickness: 1,
                        ),
                        Column(
                          children: [
                            Text(
                              '${state.user.favoriteClubIds.length + state.user.favoriteEventIds.length}',
                              style: context.subtitle1,
                            ),
                            Text(
                              S().favorites,
                              style: context.subtitle1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: const [
                          ProfileMenu(),
                          Divider(thickness: 1, height: 10),
                          SocialMediaRow(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
        }
      },
    );
  }
}
