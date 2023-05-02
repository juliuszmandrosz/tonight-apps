import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/user_details/user_details_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/user_details/widgets/user_details_favorite_clubs.dart';
import 'package:tonight/presentation/user_details/widgets/user_details_stats_row.dart';
import 'package:translations/raver_translations.dart';

class UserDetailsPage extends StatelessWidget {
  final String userId;

  const UserDetailsPage({
    required this.userId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserDetailsCubit>()..getUserById(userId),
      child: Scaffold(
        appBar: TonightAppBar(title: S().userProfile),
        body: BlocBuilder<UserDetailsCubit, UserDetailsState>(
          builder: (context, state) {
            return BlocBuilder<UserDetailsCubit, UserDetailsState>(
              builder: (context, state) {
                switch (state.status) {
                  case CubitStatus.initial:
                    return const SizedBox.shrink();
                  case CubitStatus.failure:
                    return FailureInfo(
                      retryCallback: () =>
                          context.read<UserDetailsCubit>().getUserById(userId),
                    );
                  case CubitStatus.loading:
                    return const WaveLoadingIndicator();
                  case CubitStatus.success:
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              ProfilePictureContainer(
                                imageSize: 130,
                                backgroundColor: context.surfaceColor,
                                textColor: context.onSurfaceColor,
                                username: state.user.fold(
                                  () => S().tonightUser,
                                  (user) => user.username,
                                ),
                                profilePictureUrl: state.user.fold(
                                  () => null,
                                  (user) => user.profilePictureUrl,
                                ),
                                isUserDeleted: state.user.fold(
                                  () => true,
                                  (_) => false,
                                ),
                                textStyle: context.headlineMedium,
                              ),
                              const SizedBox(height: 30),
                              TonightHeadline(
                                text: state.user.fold(
                                  () => S().tonightUser,
                                  (user) => user.username,
                                ),
                                isSmallerVersion: true,
                              ),
                              const SizedBox(height: 40),
                              state.user.fold(
                                () => Text(
                                  S().accountDeletedInfo,
                                  style: context.titleMedium.copyWith(
                                    color: context.secondaryColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                (user) => Column(
                                  children: [
                                    UserDetailsStatsRow(user: user),
                                    const SizedBox(height: 40),
                                    UserDetailsFavoriteClubs(
                                      favoriteClubs: user.favoriteClubs,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
