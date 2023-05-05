import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/update_profile_picture/update_profile_picture_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/update_profile_picture/widgets/update_profile_picture_button.dart';
import 'package:tonight/presentation/update_profile_picture/widgets/update_profile_picture_container.dart';
import 'package:translations/translations.dart';

class UpdateProfilePicturePage extends StatelessWidget {
  final String currentProfilePictureUrl;
  final String username;

  const UpdateProfilePicturePage({
    required this.currentProfilePictureUrl,
    required this.username,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => getIt<UpdateProfilePictureCubit>(),
      child: SafeArea(
        child: Scaffold(
          appBar: TonightAppBar(title: S().changeProfilePicture),
          body: BlocListener<UpdateProfilePictureCubit,
              UpdateProfilePictureState>(
            listener: (context, state) {
              state.errorMessage.fold(
                () {},
                (error) {
                  context.showSnackbarMessage(error);
                },
              );

              if (state.status.isSubmissionSuccess) {
                context.showSnackbarMessage(S().profilePictureChanged);
                context.popRoute();
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    UpdateProfilePictureContainer(
                      username: username,
                      currentProfilePictureUrl: currentProfilePictureUrl,
                    ),
                    const Spacer(),
                    const UpdateProfilePictureButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
