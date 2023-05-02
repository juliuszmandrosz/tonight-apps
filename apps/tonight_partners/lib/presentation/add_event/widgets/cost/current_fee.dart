import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:translations/raver_translations.dart';

class CurrentFee extends StatelessWidget {
  const CurrentFee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.selectedEventFee != current.selectedEventFee,
      builder: (context, state) {
        return ListTile(
          dense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          title: Text(
            S().currentFee,
            style: context.titleMedium,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              '${(state.selectedEventFee.getOrCrash() * 100).toStringAsFixed(0)}%',
              style: context.bodyMedium.copyWith(color: context.secondaryColor),
            ),
          ),
        );
      },
    );
  }
}
