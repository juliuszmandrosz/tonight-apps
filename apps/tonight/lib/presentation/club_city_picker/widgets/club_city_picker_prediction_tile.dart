import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_city_picker/club_city_picker_bloc.dart';
import 'package:tonight/application/clubs/club_list/clubs_bloc.dart';

class ClubCityPickerPredictionTile extends StatelessWidget {
  final City city;

  const ClubCityPickerPredictionTile({required this.city, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ClubCityPickerBloc, ClubCityPickerState>(
      listenWhen: (previous, current) =>
          previous.isCityFilterApplied != current.isCityFilterApplied,
      listener: (context, state) {
        context
            .read<ClubsBloc>()
            .add(ClubsEvent.cityFilterApplied(state.filter));
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
          context.read<ClubCityPickerBloc>().add(
                ClubCityPickerEvent.cityChanged(
                  cityId: city.id,
                  cityName: city.name,
                ),
              );
        },
      ),
    );
  }
}
