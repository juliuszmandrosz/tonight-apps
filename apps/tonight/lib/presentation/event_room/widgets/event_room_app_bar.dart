import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/event_room/bloc/event_room_bloc.dart';
import 'package:tonight/application/event_room/bloc/event_room_tab.dart';
import 'package:translations/translations.dart';

class EventRoomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Event event;
  final bool isKeyboardOpen;

  const EventRoomAppBar({
    required this.event,
    required this.isKeyboardOpen,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.backgroundColor,
      title: AutoSizeText(
        event.eventName,
        maxLines: 2,
        style: context.titleMedium,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      ),
      actions: [
        IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.userXmark,
            size: 20,
          ),
          onPressed: () async {
            context.unfocus();
            final result = await context
                .showConfirmationDialogWithCustomMessage(S().confirmEventLeave);
            if ((result ?? false) && context.mounted) {
              context.unfocus();
              context
                  .read<EventRoomBloc>()
                  .add(const EventRoomEvent.leavedFromEvent());
            }
          },
        ),
      ],
      bottom: isKeyboardOpen
          ? null
          : PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: TabBar(
                onTap: (index) {
                  context.unfocus();
                  context.read<EventRoomBloc>().add(
                        EventRoomEvent.tabChanged(EventRoomTab.values[index]),
                      );
                },
                dividerColor: Colors.transparent,
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.only(bottom: 12),
                labelColor: context.primaryColor.lighten(0.2),
                labelStyle: context.titleSmall,
                unselectedLabelColor: context.onSurfaceColor.withOpacity(0.6),
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: context.primaryColor.lighten(0.2),
                      width: 2,
                    ),
                  ),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      S().chat,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      S().photos(2),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                  Tab(
                    child: Text(
                      S().persons,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        isKeyboardOpen ? kToolbarHeight : kToolbarHeight * 2,
      );
}
