import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/drawer/profile_menu_tiles.dart';
import 'package:tonight/presentation/drawer/tonight_drawer_header.dart';

class TonightDrawer extends StatelessWidget {
  const TonightDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TonightOverlay(
      child: Drawer(
        child: Material(
          color: context.surfaceColor,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 80, 24, 0),
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                TonightDrawerHeader(),
                SizedBox(height: 30),
                Divider(),
                SizedBox(height: 10),
                TonightDrawerTiles(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
