import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/form_inputs/dress_code.dart';
import 'package:translations/translations.dart';

class EventDressCodeInput extends StatelessWidget {
  final List<String> outfits;

  const EventDressCodeInput({
    required this.outfits,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.dressCode != current.dressCode ||
          previous.status != current.status,
      builder: (context, state) {
        final currentValue = state.dressCode.value;
        return DropdownButtonFormField<String>(
          value: currentValue.isNotEmpty ? currentValue : null,
          decoration: InputDecoration(
            labelText: S().dressCode,
            errorText: getDressCodeErrorMessage(state),
          ),
          items: outfits.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value.capitalize()),
            );
          }).toList(),
          onChanged: (value) =>
              context.read<AddEventCubit>().dressCodeChanged(value!),
        );
      },
    );
  }
}
