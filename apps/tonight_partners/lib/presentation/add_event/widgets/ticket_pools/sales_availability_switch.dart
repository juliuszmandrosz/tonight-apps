import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:translations/translations.dart';

class SalesAvailabilitySwitch extends StatelessWidget {
  const SalesAvailabilitySwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.isSaleOnlyAtGate != current.isSaleOnlyAtGate,
      builder: (context, state) {
        return InputDecorator(
          decoration: const InputDecoration().copyWith(
            contentPadding: const EdgeInsets.all(5),
          ),
          child: SwitchListTile.adaptive(
            activeColor: context.primaryColor,
            title: Text(
              S().ticketsAvailableOnlyAtGate,
              style: context.titleMedium,
            ),
            value: state.isSaleOnlyAtGate,
            onChanged: (value) =>
                context.read<AddEventCubit>().isSaleOnlyAtGateChanged(value),
          ),
        );
      },
    );
  }
}
