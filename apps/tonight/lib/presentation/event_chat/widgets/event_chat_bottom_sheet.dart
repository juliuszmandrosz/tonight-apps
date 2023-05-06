import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tonight/application/event_chat/bloc/event_chat_bloc.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:translations/translations.dart';

class EventChatBottomSheet extends StatelessWidget {
  final BuildContext blocContext;
  final ChatMessage message;

  const EventChatBottomSheet({
    required this.blocContext,
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: blocContext.read<EventChatBloc>(),
      child: BlocBuilder<EventChatBloc, EventChatState>(
        buildWhen: (p, c) =>
            !listEquals(p.reportingMessageIds, c.reportingMessageIds),
        builder: (ctx, state) {
          return SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: IconButton(
                    onPressed: () => Share.share(message.text),
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FaIcon(FontAwesomeIcons.shareNodes),
                        const SizedBox(height: 8),
                        Text(
                          // TODO - add translation
                          'Udostępnij',
                          style: context.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: state.reportingMessageIds.contains(message.id)
                      ? const CircleLoadingIndicator()
                      : IconButton(
                          onPressed: () async {
                            final result = await context
                                .showConfirmationDialogWithCustomMessage(
                              // TODO - add translation
                              'S().confirmMessageReport',
                            );

                            if (result == true && context.mounted) {
                              context.popRoute();
                              blocContext
                                  .read<EventChatBloc>()
                                  .add(EventChatEvent.messageReported(message));
                            }
                          },
                          icon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const FaIcon(FontAwesomeIcons.solidFlag),
                              const SizedBox(height: 8),
                              Text(
                                S().report,
                                style: context.titleSmall,
                              ),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
