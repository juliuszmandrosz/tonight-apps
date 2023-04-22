import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_city_picker/club_city_picker_bloc.dart';
import 'package:tonight/presentation/club_city_picker/widgets/club_city_picker_prediction_tile.dart';

class ClubCityPickerPredictionList extends StatelessWidget {
  const ClubCityPickerPredictionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubCityPickerBloc, ClubCityPickerState>(
      builder: (context, state) {
        return state.filteredCities.isEmpty
            // TODO - add translation
            ? const Text(
                'Nie znaleziono miast dla podanej frazy',
                textAlign: TextAlign.center,
              )
            : ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.filteredCities.length,
                itemBuilder: (_, i) => ClubCityPickerPredictionTile(
                  city: state.filteredCities[i],
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 12),
              );
      },
    );
  }
}
