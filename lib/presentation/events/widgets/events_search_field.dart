import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/event_filters/event_filters_cubit.dart';

class EventsSearchField extends StatelessWidget {
  const EventsSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      builder: (context, state) {
        return TextField(
          controller: TextEditingController(text: state.filters.phrase),
          onSubmitted: (value) =>
              context.read<EventFiltersCubit>().submitSearchField(value),
          decoration: InputDecoration(
            hintText: MaterialLocalizations.of(context).searchFieldLabel,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 18,
            ),
            suffixIcon: state.filters.phrase.isEmpty
                ? null
                : InkWell(
                    onTap: () =>
                        context.read<EventFiltersCubit>().submitSearchField(''),
                    child: const Icon(
                      Icons.clear,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
