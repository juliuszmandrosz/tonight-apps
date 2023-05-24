import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/send_time_task/send_time_task_cubit.dart';

class TimeTaskDurationInMinutesInput extends StatelessWidget {
  const TimeTaskDurationInMinutesInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => context
          .read<SendTimeTaskCubit>()
          .durationInMinutesChanged(int.tryParse(value) ?? 0),
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        // TODO - add translation
        labelText: 'Czas na wykonanie (w minutach)',
      ),
    );
  }
}
