import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverPartnersSpeedDial extends StatefulWidget {
  const RaverPartnersSpeedDial({Key? key}) : super(key: key);

  @override
  _RaverPartnersSpeedDialState createState() => _RaverPartnersSpeedDialState();
}

class _RaverPartnersSpeedDialState extends State<RaverPartnersSpeedDial> {
  var _isDialOpen = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SpeedDial(
      onOpen: () => setState(() => _isDialOpen = true),
      onClose: () => setState(() => _isDialOpen = false),
      closeDialOnPop: false,
      backgroundColor: theme.primaryColor,
      activeBackgroundColor: theme.backgroundColor,
      icon: FontAwesomeIcons.plus,
      iconTheme: IconThemeData(
        color: _isDialOpen ? theme.primaryColor : theme.backgroundColor,
      ),
      activeIcon: Icons.close,
      overlayColor: Colors.grey,
      overlayOpacity: 0.5,
      spacing: 15,
      spaceBetweenChildren: 15,
      children: [
        SpeedDialChild(
          child: FaIcon(
            FontAwesomeIcons.fire,
            color: theme.backgroundColor,
          ),
          label: S().addEvent,
          onTap: () => AutoRouter.of(context).push(const AddEventRoute()),
          labelStyle: theme.textTheme.bodyText1,
          backgroundColor: theme.primaryColor,
          labelBackgroundColor: theme.primaryColor,
        ),
        SpeedDialChild(
          child: FaIcon(
            FontAwesomeIcons.trophy,
            color: theme.backgroundColor,
          ),
          label: S().addReward,
          labelStyle: theme.textTheme.bodyText1,
          onTap: () => AutoRouter.of(context).push(const AddRewardRoute()),
          backgroundColor: theme.primaryColor,
          labelBackgroundColor: theme.primaryColor,
        )
      ],
    );
  }
}
