import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_date_picker/widgets/event_date_picker.dart';
import 'package:tonight/presentation/event_date_picker/widgets/submit_selected_date_button.dart';
import 'package:translations/translations.dart';

class EventDatePickerPage extends StatelessWidget {
  final BuildContext blocContext;

  const EventDatePickerPage({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(
        title: S().date,
      ),
      body: BlocProvider.value(
        value: blocContext.read<EventFiltersCubit>(),
        child: BlocBuilder<EventFiltersCubit, EventFiltersState>(
          builder: (context, state) {
            return SafeArea(
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
            );
          },
        ),
      ),
    );
  }
}
