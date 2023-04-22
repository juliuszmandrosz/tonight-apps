import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_city_picker/event_city_picker_bloc.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';

class EventCityPickerPredictionTile extends StatelessWidget {
  final City city;

  const EventCityPickerPredictionTile({required this.city, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventCityPickerBloc, EventCityPickerState>(
      listenWhen: (previous, current) =>
          previous.isCityFilterApplied != current.isCityFilterApplied,
      listener: (context, state) {
        context
            .read<EventsBloc>()
            .add(EventsEvent.cityFilterApplied(state.filter));
        context.popRoute();
      },
      child: DenseListTile(
        leading: CircleAvatar(
          backgroundColor: context.surfaceColor,
          child: const Icon(Icons.location_pin),
        ),
        title: Text(city.name),
        onTap: () {
          context.unfocus();
          context.read<EventCityPickerBloc>().add(
                EventCityPickerEvent.cityChanged(
                  cityId: city.id,
                  cityName: city.name,
                ),
              );
        },
      ),
    );
  }
}
