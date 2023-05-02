import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/events/event_city_picker/event_city_picker_bloc.dart';
import 'package:translations/raver_translations.dart';

class EventPickerTextField extends HookWidget {
  const EventPickerTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    final phrase = useListenable(textController).value.text;
    return BlocBuilder<EventCityPickerBloc, EventCityPickerState>(
      builder: (context, state) {
        return TextField(
          controller: textController,
          decoration: InputDecoration(
            labelText: S().startSearching,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            suffixIcon: phrase.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      textController.clear();
                      context.unfocus();
                      context
                          .read<EventCityPickerBloc>()
                          .add(const EventCityPickerEvent.cityFilterResetted());
                    },
                    icon: const Icon(
                      Icons.clear,
                      size: 18,
                    ),
                  )
                : null,
          ),
          onChanged: (value) => context
              .read<EventCityPickerBloc>()
              .add(EventCityPickerEvent.searchChanged(value)),
        );
      },
    );
  }
}
