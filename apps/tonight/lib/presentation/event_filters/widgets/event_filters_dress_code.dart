import 'package:common/common.dart';
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
        return Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TonightHeadline(
                text: S().dressCode,
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                for (final outfit in availableOutfits)
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    activeColor: context.primaryColor,
                    title: Text(
                      outfitsTranslations[outfit] ?? outfit,
                      style: context.subtitle1,
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
          ],
        );
      },
    );
  }
}
