import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/onboarding/form_inputs/birthdate_value_object.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';

class OnboardingBirthdateInput extends HookWidget {
  const OnboardingBirthdateInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final now = DateTime.now();
    final initialDate = DateTime(now.year - 18, now.month, now.day);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (previous, current) =>
          previous.birthdate != current.birthdate ||
          previous.submissionStatus != current.submissionStatus,
      builder: (context, state) {
        return TextField(
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
          readOnly: true,
          maxLines: 1,
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: initialDate,
              firstDate: DateTime(1900),
              lastDate: initialDate,
            );
            if (date != null && context.mounted) {
              controller.text = context.formatDateTimeToLocaleYMD(date);
              context.read<OnboardingCubit>().birthdateChanged(date);
            }
          },
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.calendar_month),
            hintMaxLines: 1,
            // TODO - add translation
            hintText: 'Data urodzenia',
            labelText: 'Data urodzenia',
            hintStyle: context.titleSmall.copyWith(color: context.hintColor),
            errorText: _getBirthdateInputErrorMessage(state),
            errorMaxLines: 2,
          ),
        );
      },
    );
  }

  String? _getBirthdateInputErrorMessage(OnboardingState state) {
    if (state.birthdate.valid ||
        state.submissionStatus != FormzStatus.invalid) {
      return null;
    }

    return birthdateErrorMessages[state.birthdate.error];
  }
}
