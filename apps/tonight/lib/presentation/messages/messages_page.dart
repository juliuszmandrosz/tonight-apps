import 'package:flutter/material.dart';
import 'package:tonight/presentation/chats/chats_page.dart';
import 'package:tonight/presentation/messages/widgets/messages_sliver_app_bar.dart';
import 'package:tonight/presentation/notifications/notifications_page.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Column(
        children: [
          SizedBox(height: 8),
          MessagesAppBar(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ChatsPage(),
                  NotificationsPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
