import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class ExclusiveEventSwitch extends StatelessWidget {
  const ExclusiveEventSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.isExclusiveEvent != current.isExclusiveEvent,
      builder: (context, state) {
        return SwitchListTile.adaptive(
          dense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          title: Text(
            S().exclusiveEvent,
            style: context.subtitle1,
          ),
          value: state.isExclusiveEvent,
          onChanged: (value) =>
              context.read<AddEventCubit>().isExclusiveEventChanged(value),
        );
      },
    );
  }
}
