import 'package:common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';

class TonightEventFilterChips extends StatelessWidget {
  const TonightEventFilterChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TonightEventsBloc, TonightEventsState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var filter in state.appliedMenuFilters.keys)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: InputChip(
                    backgroundColor: context.backgroundColor,
                    label: Text(filter.label),
                    onDeleted: () => context
                        .read<TonightEventsBloc>()
                        .add(TonightEventsEvent.menuFilterRemoved(filter)),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
