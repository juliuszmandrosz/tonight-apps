import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/send_time_task/send_time_task_cubit.dart';

class TimeTaskDescriptionPlInput extends StatelessWidget {
  const TimeTaskDescriptionPlInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) =>
          context.read<SendTimeTaskCubit>().descriptionPlChanged(value),
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        // TODO - add translation
        labelText: 'Opis w jęzuku polskim',
      ),
    );
  }
}
