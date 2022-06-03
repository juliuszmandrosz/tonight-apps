import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';

class CurrentFee extends StatelessWidget {
  const CurrentFee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) => previous.eventFee != current.eventFee,
      builder: (context, state) {
        return ListTile(
          dense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          title: Text(
            // TODO - add translation
            'Aktualna prowizja',
            style: context.subtitle1,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              '${(state.eventFee.getOrCrash() * 100).toStringAsFixed(0)}%',
              style: context.bodyText2.copyWith(color: context.secondaryColor),
            ),
          ),
        );
      },
    );
  }
}
