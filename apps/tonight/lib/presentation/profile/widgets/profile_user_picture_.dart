import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_confirm_phone_number_dialog.dart';

class ProfileUserPicture extends StatelessWidget {
  final String profilePictureUrl;
  final String username;

  const ProfileUserPicture({
    required this.profilePictureUrl,
    required this.username,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageSize = 130.0;
    const buttonSize = 40.0;
    return Stack(
      alignment: Alignment.center,
      children: [
        ProfilePictureContainer(
          imageSize: imageSize,
          profilePictureUrl: profilePictureUrl,
          username: username,
          textStyle: context.headlineMedium,
          backgroundColor: context.surfaceColor,
          textColor: context.onSurfaceColor,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: buttonSize,
            width: buttonSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.secondaryContainer,
            ),
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () async {
                    if (state.maybeWhen(
                        authenticated: (user) => user.isPhoneNumberVerified,
                        orElse: () => false)) {
                      context.pushRoute(
                        UpdateProfilePictureRoute(
                          currentProfilePictureUrl: profilePictureUrl,
                          username: username,
                        ),
                      );
                      return;
                    }

                    await showConfirmPhoneNumberDialog(context);
                  },
                  color: context.onSecondaryContainer,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
