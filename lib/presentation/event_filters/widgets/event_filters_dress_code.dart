import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/config/translations/translations.dart';
import 'package:raver/presentation/core/raver_headline.dart';

class EventFiltersDressCode extends StatelessWidget {
  final List<String> availableOutfits;

  const EventFiltersDressCode({
    required this.availableOutfits,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.allowedOutfits != current.filters.allowedOutfits,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [RaverHeadline(text: S().dressCode)],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                for (final outfit in availableOutfits)
                  CheckboxListTile(
                    activeColor: DefaultColors.primaryColor,
                    title: Text(
                      outfitsTranslations[outfit] ?? outfit,
                      style: textTheme.subtitle1,
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: state.filters.allowedOutfits.contains(outfit),
                    onChanged: (value) => context
                        .read<EventFiltersCubit>()
                        .changeAllowedOutfits(outfit),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
