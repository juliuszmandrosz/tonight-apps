import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/user_details/user_details_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/commons/icons/user_profile_details_row.dart';
import 'package:tonight/presentation/core/ticket_logo_animation.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

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
        // TODO - add translation
        appBar: const TonightAppBar(title: 'User Profile'),
        body: BlocConsumer<UserDetailsCubit, UserDetailsState>(
          listener: (context, state) {
            if (state.status.isFailure()) {
              context.pushRoute(
                FailureRoute(
                  retryCallback: () =>
                      context.read<UserDetailsCubit>().getUserById(userId),
                ),
              );
            }
          },
          builder: (context, state) {
            return BlocBuilder<UserDetailsCubit, UserDetailsState>(
              builder: (context, state) {
                switch (state.status) {
                  case CubitStatus.initial:
                    return Container();
                  case CubitStatus.failure:
                    return Container();
                  case CubitStatus.loading:
                    return const TicketLogoAnimation();
                  case CubitStatus.success:
                    final user = state.user.getOrCrash();
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(height: 30),
                              ProfilePictureContainer(
                                imageSize: 130,
                                username: user.username,
                                profilePictureUrl: user.profilePictureUrl,
                              ),
                              const SizedBox(height: 30),
                              TonightHeadline(
                                text: user.username,
                                isSmallerVersion: true,
                              ),
                              const SizedBox(height: 40),
                              UserProfileDetailsRow(user: user),
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
