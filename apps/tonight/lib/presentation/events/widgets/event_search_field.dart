import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:translations/translations.dart';

class EventSearchField extends StatelessWidget {
  const EventSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        return Column(
          children: [
            TextField(
              textAlignVertical: TextAlignVertical.center,
              controller: TextEditingController(
                text: state.eventFilters.phraseFilter.phrase,
              ),
              onSubmitted: (value) => context
                  .read<EventsBloc>()
                  .add(EventsEvent.phraseFilterApplied(value)),
              decoration: InputDecoration(
                hintMaxLines: 1,
                hintText: S().startSearching,
                hintStyle:
                    context.titleSmall.copyWith(color: context.hintColor),
                prefixIcon: const Icon(Icons.search, size: 22),
                suffixIcon: state.eventFilters.phraseFilter.phrase.isEmpty
                    ? null
                    : InkWell(
                        onTap: () => context
                            .read<EventsBloc>()
                            .add(const EventsEvent.phraseFilterApplied('')),
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
