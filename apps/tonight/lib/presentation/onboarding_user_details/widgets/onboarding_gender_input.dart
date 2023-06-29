import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/onboarding_user_details/form_inputs/gender_value_object.dart';
import 'package:tonight/application/onboarding_user_details/gender.dart';
import 'package:tonight/application/onboarding_user_details/onboarding_user_details_cubit.dart';

class OnboardingGenderInput extends HookWidget {
  const OnboardingGenderInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocBuilder<OnboardingUserDetailsCubit, OnboardingUserDetailsState>(
      buildWhen: (previous, current) =>
          previous.gender != current.gender ||
          previous.submissionStatus != current.submissionStatus,
      builder: (context, state) {
        return TextField(
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
          readOnly: true,
          maxLines: 1,
          onTap: () async {
            final gender = await _showGenderDialog(context);
            if (gender != null && context.mounted) {
              context.read<OnboardingUserDetailsCubit>().genderChanged(gender);
              controller.text = gender.label;
            }
          },
          decoration: InputDecoration(
            prefixIcon: Icon(
              state.gender.value?.icon ?? FontAwesomeIcons.solidUser,
              size: 16,
            ),
            hintMaxLines: 1,
            // TODO - add translation
            hintText: 'Płeć',
            labelText: 'Płeć',
            hintStyle: context.titleSmall.copyWith(color: context.hintColor),
            errorText: _getGenderInputErrorMessage(state),
            errorMaxLines: 2,
          ),
        );
      },
    );
  }

  Future<Gender?> _showGenderDialog(BuildContext context) async {
    return await showDialog<Gender>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          // TODO - add translation
          title: Text('Wybierz płeć'),
          children: [
            ...Gender.values.map(
              (gender) => SimpleDialogOption(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                onPressed: () => Navigator.pop(context, gender),
                child: Row(
                  children: [
                    Icon(
                      gender.icon,
                      color: gender.color,
                      size: 16,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      gender.label,
                      style: context.titleSmall.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  String? _getGenderInputErrorMessage(OnboardingUserDetailsState state) {
    if (state.gender.valid || state.submissionStatus != FormzStatus.invalid) {
      return null;
    }

    return genderErrorMessages[state.gender.error];
  }
}
