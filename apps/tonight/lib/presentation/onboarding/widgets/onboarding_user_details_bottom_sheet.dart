import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';
import 'package:translations/translations.dart';

class OnboardingUserDetailsBottomSheet extends StatelessWidget {
  final BuildContext blocContext;

  const OnboardingUserDetailsBottomSheet({required this.blocContext, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: blocContext.read<OnboardingCubit>(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (ctx, state) {
          return SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: IconButton(
                    onPressed: () async {
                      context.popRoute();
                      await blocContext
                          .read<OnboardingCubit>()
                          .pickProfilePhoto();
                    },
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FaIcon(FontAwesomeIcons.pen),
                        const SizedBox(height: 8),
                        Text(
                          S().edit,
                          style: context.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: IconButton(
                    onPressed: () async {
                      context.popRoute();
                      await blocContext.read<OnboardingCubit>().deletePhoto();
                    },
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FaIcon(FontAwesomeIcons.trashCan),
                        const SizedBox(height: 8),
                        Text(
                          S().delete,
                          style: context.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
