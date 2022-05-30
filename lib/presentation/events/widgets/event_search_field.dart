import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';

class EventSearchField extends StatelessWidget {
  const EventSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      builder: (context, state) {
        return Column(
          children: [
            TextField(
              controller: TextEditingController(
                  text: state.filters.phraseFilter.phrase),
              onSubmitted: (value) =>
                  context.read<EventFiltersCubit>().submitSearchField(value),
              decoration: InputDecoration(
                hintMaxLines: 1,
                // TODO - add translations
                hintText: 'Ropocznij wyszukiwanie...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: state.filters.phraseFilter.phrase.isEmpty
                    ? null
                    : InkWell(
                        onTap: () => context
                            .read<EventFiltersCubit>()
                            .submitSearchField(''),
                        child: const Icon(Icons.clear),
                      ),
              ),
            ),
            const SizedBox(height: 15),
            const AutoSizeText(
              // TODO - add translations
              'Wpisz nazwę wydarzenia, klubu lub artysty',
              maxLines: 1,
              textAlign: TextAlign.center,
            )
          ],
        );
      },
    );
  }
}
