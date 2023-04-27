import 'package:common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/event_chat/bloc/event_chat_bloc.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';

class EventChatRetryIcon extends StatelessWidget {
  final ChatMessage message;

  const EventChatRetryIcon({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      padding: const EdgeInsets.only(right: 12),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () => context
            .read<EventChatBloc>()
            .add(EventChatEvent.messageResent(message)),
        icon: FaIcon(
          FontAwesomeIcons.arrowsRotate,
          color: context.errorColor,
          size: 12,
        ),
      ),
    );
  }
}
