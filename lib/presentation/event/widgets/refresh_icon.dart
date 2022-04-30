import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';

class RefreshCurrentEventButton extends StatelessWidget {
  const RefreshCurrentEventButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<CurrentEventCubit>().getCurrentEvent(),
      icon: const Icon(
        Icons.refresh,
        size: 28,
      ),
    );
  }
}
