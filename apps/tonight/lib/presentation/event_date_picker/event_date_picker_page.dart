import 'package:events/domain/filters/filter/date_range_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_date_picker/event_date_picker_cubit.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_date_picker/widgets/event_date_picker.dart';
import 'package:tonight/presentation/event_date_picker/widgets/submit_selected_date_button.dart';
import 'package:translations/raver_translations.dart';

class EventDatePickerPage extends StatelessWidget {
  final BuildContext blocContext;
  final DateRangeFilter selectedDate;

  const EventDatePickerPage({
    required this.blocContext,
    required this.selectedDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(
        title: S().date,
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                getIt<EventDatePickerCubit>()..initDate(selectedDate),
          ),
          BlocProvider.value(
            value: blocContext.read<EventsBloc>(),
          ),
        ],
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Flexible(
                  flex: 6,
                  child: EventDatePicker(),
                ),
                Spacer(),
                SubmitSelectedDateButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
