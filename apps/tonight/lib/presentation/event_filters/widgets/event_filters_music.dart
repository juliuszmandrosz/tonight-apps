import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class EventFiltersMusic extends StatelessWidget {
  final List<String> availableMusicalGenres;

  const EventFiltersMusic({
    required this.availableMusicalGenres,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.musicalGenresFilter.musicalGenres !=
          current.filters.musicalGenresFilter.musicalGenres,
      builder: (context, state) {
        return Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TonightHeadline(
                text: S().music,
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                for (var genre in availableMusicalGenres)
                  CheckboxListTile(
                    activeColor: context.primaryColor,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      genre.capitalize(),
                      style: context.titleMedium,
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: state.filters.musicalGenresFilter.musicalGenres
                        .contains(genre),
                    onChanged: (value) => context
                        .read<EventFiltersCubit>()
                        .changeMusicalGenres(genre),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
