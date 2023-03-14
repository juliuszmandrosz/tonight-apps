import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/add_event/add_event_step.dart';

class AddEventButton extends StatelessWidget {
  const AddEventButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      builder: (context, state) {
        return state.currentStep == AddEventStep.summary
            ? FloatingActionButton(
                onPressed: () => context.read<AddEventCubit>().incrementStep(),
                child: const FaIcon(FontAwesomeIcons.plus),
              )
            : const SizedBox();
      },
    );
  }
}
