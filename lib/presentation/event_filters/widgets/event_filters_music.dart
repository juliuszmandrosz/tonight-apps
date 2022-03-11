import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/commons/extensions/string_extensions.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_headline.dart';

class EventFiltersMusic extends StatelessWidget {
  final List<String> availableMusicalGenres;

  const EventFiltersMusic({
    required this.availableMusicalGenres,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.musicalGenres != current.filters.musicalGenres,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [RaverHeadline(text: S().music)],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                for (var genre in availableMusicalGenres)
                  CheckboxListTile(
                    activeColor: DefaultColors.primaryColor,
                    title: Text(
                      genre.capitalize(),
                      style: textTheme.subtitle1,
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: state.filters.musicalGenres.contains(genre),
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
