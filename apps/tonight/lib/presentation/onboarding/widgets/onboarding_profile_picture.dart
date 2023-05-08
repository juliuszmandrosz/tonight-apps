import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';
import 'package:tonight/presentation/onboarding/widgets/onboarding_user_details_bottom_sheet.dart';
import 'package:tonight/presentation/utils/show_confirm_phone_number_dialog.dart';

class OnboardingProfilePicture extends StatelessWidget {
  const OnboardingProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, onboardingState) {
        final photo = onboardingState.userPhoto;
        final username = onboardingState.username.value;
        return LayoutBuilder(builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          const imageSize = 150.0;
          const buttonSize = 40.0;
          const iconPadding = 10.0;
          return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: imageSize,
                width: imageSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.surfaceColor,
                ),
                child: Center(
                  child: photo.isSome()
                      ? Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: Image.memory(photo.getOrCrash()).image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Text(
                          username.isEmpty
                              ? ''
                              : username.length == 1
                                  ? username[0].toUpperCase()
                                  : username.substring(0, 2).toUpperCase(),
                          style: context.headlineMedium,
                        ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: (maxWidth - imageSize) / 2 - iconPadding,
                child: Container(
                  height: buttonSize,
                  width: buttonSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colors.secondaryContainer,
                  ),
                  child: BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, authState) {
                      return IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () async {
                          if (authState.maybeWhen(
                              authenticated: (user) =>
                                  user.isPhoneNumberVerified,
                              orElse: () => false)) {
                            photo.fold(
                              context.read<OnboardingCubit>().pickProfilePhoto,
                              (p) async {
                                context.unfocus();
                                await showModalBottomSheet(
                                  context: context,
                                  builder: (_) =>
                                      OnboardingUserDetailsBottomSheet(
                                    blocContext: context,
                                  ),
                                );
                              },
                            );

                            return;
                          }
                          await showConfirmPhoneNumberDialog(context);
                        },
                        color: colors.onSecondaryContainer,
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        });
      },
    );
  }
}
