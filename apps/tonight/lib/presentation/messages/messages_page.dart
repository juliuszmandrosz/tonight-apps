import 'package:flutter/material.dart';
import 'package:tonight/presentation/chats/chats_page.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: ChatsPage(),
    );
  }
}
