import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventDatePickerField extends HookWidget {
  const EventDatePickerField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datePickerController = useTextEditingController();
    return BlocConsumer<EventsBloc, EventsState>(
      listenWhen: (previous, current) =>
          previous.eventFilters.dateRangeFilter !=
          current.eventFilters.dateRangeFilter,
      listener: (context, state) {
        final date = state.eventFilters.dateRangeFilter.toDate;
        datePickerController.text =
            date != null ? context.formatDateTimeToLocaleMD(date) : '';
      },
      buildWhen: (previous, current) =>
          previous.eventFilters.dateRangeFilter !=
          current.eventFilters.dateRangeFilter,
      builder: (context, state) {
        return TextField(
          controller: datePickerController,
          textAlignVertical: TextAlignVertical.center,
          readOnly: true,
          maxLines: 1,
          onTap: () => context.pushRoute(
            EventDatePickerRoute(
              blocContext: context,
              selectedDate: state.eventFilters.dateRangeFilter,
            ),
          ),
          decoration: InputDecoration(
            prefixIcon: state.eventFilters.dateRangeFilter.toDate != null
                ? null
                : const Icon(Icons.calendar_month),
            hintMaxLines: 1,
            // TODO - add translation
            hintText: 'Kiedy?',
            hintStyle: context.titleSmall.copyWith(color: context.hintColor),
            suffixIcon: state.eventFilters.dateRangeFilter.toDate != null
                ? IconButton(
                    onPressed: () => context.read<EventsBloc>().add(
                          EventsEvent.dateFilterApplied(
                            DateRangeFilter.empty(),
                          ),
                        ),
                    icon: const Icon(Icons.clear),
                  )
                : null,
          ),
        );
      },
    );
  }
}
