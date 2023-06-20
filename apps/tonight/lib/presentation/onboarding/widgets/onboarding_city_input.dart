import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/onboarding/form_inputs/city_value_object.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/generated/l10n.dart';

class OnboardingCityInput extends HookWidget {
  const OnboardingCityInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (previous, current) =>
          previous.city != current.city ||
          previous.submissionStatus != current.submissionStatus,
      builder: (context, state) {
        textController.text = state.city.value?.name ?? '';
        return TextField(
          onTap: () {
            context.unfocus();
            context.pushRoute(
              UserCityPickerRoute(blocContext: context),
            );
          },
          readOnly: true,
          controller: textController,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              FontAwesomeIcons.city,
              size: 16,
            ),
            labelText: S().city,
            errorText: _getCityInputErrorMessage(state),
            errorMaxLines: 2,
          ),
        );
      },
    );
  }

  String? _getCityInputErrorMessage(OnboardingState state) {
    if (state.city.valid || state.submissionStatus != FormzStatus.invalid) {
      return null;
    }

    return cityErrorMessages[state.city.error];
  }
}
