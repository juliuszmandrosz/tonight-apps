import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/user_city_picker/user_city_picker_bloc.dart';
import 'package:tonight/domain/places/place_entity.dart';

class UserCityPickerPredictionTile extends StatelessWidget {
  final Place place;

  const UserCityPickerPredictionTile({required this.place, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      leading: CircleAvatar(
        backgroundColor: context.surfaceColor,
        child: const Icon(Icons.location_pin),
      ),
      title: Text(place.name),
      onTap: () {
        context.unfocus();
        context
            .read<UserCityPickerBloc>()
            .add(UserCityPickerEvent.placePicked(place));
      },
    );
  }
}
