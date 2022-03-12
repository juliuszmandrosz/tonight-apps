import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/home/events_tab/widgets/event_search_field.dart';
import 'package:raver/presentation/routes/app_router.dart';

class EventFiltersSection extends StatelessWidget {
  const EventFiltersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Expanded(
          child: EventSearchField(),
        ),
        RaverIconButton(
          onPressed: () => AutoRouter.of(context).push(
            const EventDatePickerRoute(),
          ),
          icon: const FaIcon(
            FontAwesomeIcons.calendarAlt,
            color: DefaultColors.primaryColor,
            size: 30,
          ),
        ),
        RaverIconButton(
          onPressed: () => AutoRouter.of(context).push(
            const EventFiltersRoute(),
          ),
          icon: const FaIcon(
            FontAwesomeIcons.filter,
            color: DefaultColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
