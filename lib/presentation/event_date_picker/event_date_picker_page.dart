import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/event_date_picker/widgets/event_date_picker.dart';
import 'package:raver/presentation/event_date_picker/widgets/event_date_picker_buttons.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDatePickerPage extends StatelessWidget {
  const EventDatePickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverAppBar(
        title: S().date,
      ),
      body: BlocBuilder<EventFiltersCubit, EventFiltersState>(
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
                  EventDatePickerButtons(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
