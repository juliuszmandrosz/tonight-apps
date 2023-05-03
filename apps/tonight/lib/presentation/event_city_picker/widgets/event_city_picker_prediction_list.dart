import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_city_picker/event_city_picker_bloc.dart';
import 'package:tonight/presentation/event_city_picker/widgets/event_city_picker_prediction_tile.dart';
import 'package:translations/translations.dart';

class EventCityPickerPredictionList extends StatelessWidget {
  const EventCityPickerPredictionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventCityPickerBloc, EventCityPickerState>(
      builder: (context, state) {
        return state.filteredCities.isEmpty
            ? Text(
                S().noCitiesForPhrase,
                textAlign: TextAlign.center,
              )
            : ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.filteredCities.length,
                itemBuilder: (_, i) => EventCityPickerPredictionTile(
                  city: state.filteredCities[i],
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 12),
              );
      },
    );
  }
}
