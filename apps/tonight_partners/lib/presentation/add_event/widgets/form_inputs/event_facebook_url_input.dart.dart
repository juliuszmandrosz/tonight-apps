import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/form_inputs/facebook_url.dart';

class EventFacebookUrlInput extends HookWidget {
  const EventFacebookUrlInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(
      text: context.read<AddEventCubit>().state.facebookUrl.value,
    );

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.isFacebookUrlEnabled != current.isFacebookUrlEnabled ||
          previous.facebookUrl != current.facebookUrl ||
          previous.status != current.status,
      builder: (context, state) {
        if (!state.isFacebookUrlEnabled) {
          controller.text = '';
        }
        return IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: FaIcon(
                        socialMediaMap[facebook]!.icon,
                        size: 40,
                        color: state.isFacebookUrlEnabled
                            ? context.primaryColor
                            : context.outlineColor,
                      ),
                      onPressed: () => context
                          .read<AddEventCubit>()
                          .toggleFacebookUrlEnabledState(),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Flexible(
                flex: 6,
                child: Column(
                  children: [
                    TextField(
                      enabled: state.isFacebookUrlEnabled,
                      style: state.isFacebookUrlEnabled
                          ? const TextStyle()
                          : const TextStyle().copyWith(
                              color: context.outlineColor,
                            ),
                      controller: controller,
                      onChanged: (value) => context
                          .read<AddEventCubit>()
                          .facebookUrlChanged(value),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: socialMediaMap[facebook]!.label,
                        errorText: _getFacebookUrlErrorMessage(state),
                        errorMaxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String? _getFacebookUrlErrorMessage(AddEventState state) {
    if (!state.isFacebookUrlEnabled) return null;

    if (state.facebookUrl.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return facebookUrlErrorMessages[state.facebookUrl.error];
  }
}
