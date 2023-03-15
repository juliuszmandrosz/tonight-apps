import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:translations/translations.dart';

class ExclusiveEventSwitch extends StatelessWidget {
  const ExclusiveEventSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.isExclusiveEvent != current.isExclusiveEvent,
      builder: (context, state) {
        return SwitchListTile.adaptive(
          activeColor: context.primaryColor,
          dense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          title: Text(
            S().exclusiveEvent,
            style: context.titleMedium,
          ),
          value: state.isExclusiveEvent,
          onChanged: (value) =>
              context.read<AddEventCubit>().isExclusiveEventChanged(value),
        );
      },
    );
  }
}
