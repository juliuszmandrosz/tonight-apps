import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/form_inputs/event_name.dart';
import 'package:translations/translations.dart';

class EventNameInput extends HookWidget {
  const EventNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(
      text: context.read<AddEventCubit>().state.eventName.value,
    );

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.eventName != current.eventName ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: controller,
          onChanged: (value) =>
              context.read<AddEventCubit>().eventNameChanged(value),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: S().eventName,
            errorText: _getEventNameErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getEventNameErrorMessage(AddEventState state) {
    if (state.eventName.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return eventNameErrorMessages[state.eventName.error];
  }
}
