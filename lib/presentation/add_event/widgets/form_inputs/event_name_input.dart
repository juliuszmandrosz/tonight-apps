import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/form_inputs/event_name.dart';
import 'package:raver_translations/raver_translations.dart';

class EventNameInput extends HookWidget {
  const EventNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text: context.read<AddEventCubit>().state.eventName.value,
    );

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.eventName != current.eventName ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: _controller,
          onChanged: (value) =>
              context.read<AddEventCubit>().eventNameChanged(value),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: S().eventName,
            errorText: getEventNameErrorMessage(state),
          ),
        );
      },
    );
  }
}
