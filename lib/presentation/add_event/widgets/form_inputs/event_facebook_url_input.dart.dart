import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/form_inputs/facebook_url.dart';

class EventFacebookUrlInput extends HookWidget {
  const EventFacebookUrlInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text: context.read<AddEventCubit>().state.facebookUrl.value,
    );

    final theme = Theme.of(context);

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.isFacebookUrlEnabled != current.isFacebookUrlEnabled ||
          previous.facebookUrl != current.facebookUrl ||
          previous.status != current.status,
      builder: (context, state) {
        if (!state.isFacebookUrlEnabled) {
          _controller.text = '';
        }
        return IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    IconButton(
                      icon: FaIcon(
                        eventSocialMedia[facebook]!.icon,
                        size: 40,
                        color: state.isFacebookUrlEnabled
                            ? theme.primaryColor
                            : theme.colorScheme.outline,
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
                              color: Theme.of(context).disabledColor,
                            ),
                      controller: _controller,
                      onChanged: (value) => context
                          .read<AddEventCubit>()
                          .facebookUrlChanged(value),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: eventSocialMedia[facebook]!.label,
                        errorText: _getFacebookUrlErrorMessage(state),
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
