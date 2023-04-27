import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/event_chat/bloc/event_chat_bloc.dart';

class EventChatInput extends HookWidget {
  const EventChatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return BlocBuilder<EventChatBloc, EventChatState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: context.backgroundColor,
            border: Border(
              top: BorderSide(
                color: context.dividerColor,
                width: 1,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: IntrinsicHeight(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: null,
                    controller: textController,
                    onChanged: (value) =>
                        context
                            .read<EventChatBloc>()
                            .add(EventChatEvent.inputMessageChanged(value)),
                    decoration: const InputDecoration(
                      // TODO - add translation
                      hintText: 'Napisz wiadomość',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              if (state.inputMessage.isNotEmpty)
                IconButton(
                  onPressed: () {
                    textController.text = '';
                    context
                        .read<EventChatBloc>()
                        .add(const EventChatEvent.messageSent());
                  },
                  icon: const FaIcon(FontAwesomeIcons.solidPaperPlane),
                ),
            ],
          ),
        );
      },
    );
  }
}
