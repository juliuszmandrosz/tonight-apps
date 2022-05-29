import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
              child: RaverHeadline(
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
                      style: context.subtitle1,
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
