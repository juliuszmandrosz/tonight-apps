import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

class MessagesAppBar extends StatefulWidget {
  const MessagesAppBar({Key? key}) : super(key: key);

  @override
  State<MessagesAppBar> createState() => _MessagesAppBarState();
}

class _MessagesAppBarState extends State<MessagesAppBar> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TabBar(
        onTap: (index) => setState(() => selectedIndex = index),
        dividerColor: Colors.transparent,
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.only(bottom: 12),
        labelColor: context.secondaryColor,
        labelStyle: context.titleSmall,
        unselectedLabelColor: context.secondaryColor.withOpacity(0.6),
        indicatorColor: context.secondaryColor,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: context.secondaryColor,
              width: 1,
            ),
          ),
        ),
        tabs: [
          Tab(
            icon: FaIcon(
              selectedIndex == 0
                  ? FontAwesomeIcons.solidBell
                  : FontAwesomeIcons.bell,
            ),
            child: AutoSizeText(
              S().notifications,
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
          Tab(
            icon: FaIcon(
              selectedIndex == 1
                  ? FontAwesomeIcons.solidComments
                  : FontAwesomeIcons.comments,
            ),
            child: AutoSizeText(
              // TODO - add translation
              'Twoje ${S().chats.toLowerCase()}',
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
