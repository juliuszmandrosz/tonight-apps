import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/translations/outfits_translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class EventFiltersDressCode extends StatelessWidget {
  final List<String> availableOutfits;

  const EventFiltersDressCode({
    required this.availableOutfits,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.allowedOutfitsFilter.allowedOutfits !=
          current.filters.allowedOutfitsFilter.allowedOutfits,
      builder: (context, state) {
        return ListTileTheme(
          contentPadding: const EdgeInsets.all(0),
          dense: true,
          child: ExpansionTile(
            leading: TonightHeadline(
              text: S().dressCode,
              isSmallerVersion: true,
            ),
            title: const SizedBox.shrink(),
            children: [
              for (final outfit in availableOutfits)
                CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  activeColor: context.primaryColor,
                  title: Text(
                    outfitsTranslations[outfit] ?? outfit,
                    style: context.titleMedium,
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: state.filters.allowedOutfitsFilter.allowedOutfits
                      .contains(outfit),
                  onChanged: (value) => context
                      .read<EventFiltersCubit>()
                      .changeAllowedOutfits(outfit),
                ),
            ],
          ),
        );
      },
    );
  }
}
