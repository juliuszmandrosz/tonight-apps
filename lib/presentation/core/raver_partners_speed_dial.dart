import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
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
    return SpeedDial(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      onOpen: () => setState(() => _isDialOpen = true),
      onClose: () => setState(() => _isDialOpen = false),
      closeDialOnPop: false,
      backgroundColor: context.primaryColor,
      activeBackgroundColor: context.surfaceColor,
      icon: Icons.add,
      iconTheme: IconThemeData(
        color: _isDialOpen ? context.primaryColor : context.onSurfaceColor,
      ),
      activeIcon: Icons.close,
      overlayColor: context.shadowColor,
      overlayOpacity: 0.5,
      spacing: 15,
      spaceBetweenChildren: 15,
      children: [
        SpeedDialChild(
          child: FaIcon(
            FontAwesomeIcons.fire,
            color: context.onSurfaceColor,
          ),
          label: S().addEvent,
          onTap: () => AutoRouter.of(context).push(
            AddEventRoute(blocContext: context),
          ),
          labelStyle: context.bodyText1,
          backgroundColor: context.primaryColor,
          labelBackgroundColor: context.primaryColor,
        ),
        SpeedDialChild(
          child: FaIcon(
            FontAwesomeIcons.trophy,
            color: context.onSurfaceColor,
          ),
          label: S().addReward,
          labelStyle: context.bodyText1,
          onTap: () => AutoRouter.of(context).push(const AddRewardRoute()),
          backgroundColor: context.primaryColor,
          labelBackgroundColor: context.primaryColor,
        ),
        SpeedDialChild(
          child: FaIcon(
            FontAwesomeIcons.solidUser,
            color: context.onSurfaceColor,
          ),
          label: S().inviteSelector,
          labelStyle: context.bodyText1,
          onTap: () => AutoRouter.of(context).push(const InviteSelectorRoute()),
          backgroundColor: context.primaryColor,
          labelBackgroundColor: context.primaryColor,
        )
      ],
    );
  }
}
