import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';

class OnboardingProfilePicture extends StatelessWidget {
  const OnboardingProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        final photo = state.userPhoto;
        final username = state.username.value;
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
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
              right: 90,
              bottom: 0,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors.secondaryContainer,
                ),
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () =>
                      context.read<OnboardingCubit>().pickProfilePhoto(),
                  color: colors.onSecondaryContainer,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
