import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

class EventIsConcertInput extends StatelessWidget {
  const EventIsConcertInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) => previous.isConcert != current.isConcert,
      builder: (context, state) {
        return InputDecorator(
          decoration: const InputDecoration().copyWith(
            contentPadding: const EdgeInsets.all(5),
          ),
          child: SwitchListTile.adaptive(
            title: Text(
              S().isConcert,
              style: context.subtitle1,
            ),
            value: state.isConcert,
            onChanged: (value) =>
                context.read<AddEventCubit>().isConcertChanged(value),
          ),
        );
      },
    );
  }
}
