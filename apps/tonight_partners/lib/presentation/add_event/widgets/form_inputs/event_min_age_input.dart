import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/form_inputs/min_age.dart';
import 'package:translations/raver_translations.dart';

class EventMinAgeInput extends StatelessWidget {
  final List<int> minAges;

  const EventMinAgeInput({
    required this.minAges,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.minAge != current.minAge ||
          previous.status != current.status,
      builder: (context, state) {
        return DropdownButtonFormField<int>(
          value: state.minAge.value,
          decoration: InputDecoration(
            labelText: S().minAge,
            errorText: getMinAgeErrorMessage(state),
          ),
          items: minAges.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text('$value+'),
            );
          }).toList(),
          onChanged: (value) =>
              context.read<AddEventCubit>().minAgeChanged(value!),
        );
      },
    );
  }
}
