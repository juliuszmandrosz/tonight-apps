import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class RefreshCurrentEventButton extends StatelessWidget {
  const RefreshCurrentEventButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => context.read<CurrentEventCubit>().getCurrentEvent(),
      child: Text(S().refresh),
    );
  }
}
