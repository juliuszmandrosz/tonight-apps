import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/form_inputs/description.dart';
import 'package:translations/translations.dart';

class EventDescriptionInput extends HookWidget {
  const EventDescriptionInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text: context.read<AddEventCubit>().state.description.value,
    );

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.description != current.description ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: _controller,
          onChanged: (value) =>
              context.read<AddEventCubit>().descriptionChanged(value),
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            labelText: S().description,
            errorText: _getDescriptionErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getDescriptionErrorMessage(AddEventState state) {
    if (state.description.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return descriptionErrorMessages[state.description.error];
  }
}
