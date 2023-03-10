import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/event_filters/event_filters_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class EventsSearchField extends StatelessWidget {
  const EventsSearchField({Key? key}) : super(key: key);

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
                hintText: S().startSearching,
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
          ],
        );
      },
    );
  }
}
