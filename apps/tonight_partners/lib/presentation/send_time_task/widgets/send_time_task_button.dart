import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/application/send_time_task/send_time_task_cubit.dart';
import 'package:tonight_partners/presentation/core/dots_loading_indicator.dart';

class SendTimeTaskButton extends StatelessWidget {
  final Event event;

  const SendTimeTaskButton({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendTimeTaskCubit, SendTimeTaskState>(
      buildWhen: (p, c) => p.status != c.status,
      builder: (context, state) {
        return FloatingActionButton(
          onPressed: state.status.isLoading()
              ? null
              : () => context.read<SendTimeTaskCubit>().sendTimeTask(event),
          child: state.status.isLoading()
              ? const DotsLoadingIndicator(size: 16)
              : const FaIcon(FontAwesomeIcons.solidPaperPlane),
        );
      },
    );
  }
}
