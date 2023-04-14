import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/select_club/select_club_cubit.dart';
import 'package:translations/translations.dart';

class SelectClubNoNearClubsInfo extends StatelessWidget {
  const SelectClubNoNearClubsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userLocationCubit = context.read<UserLocationCubit>();
    final selectClubCubit = context.read<SelectClubCubit>();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // TODO - add translation
          const Text(
            'W pobliżu Ciebie nie ma klubów, aby dodać zdjęcie, musisz znajdować się w klubie',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => selectClubCubit.fetchClubs(
              userLocationCubit.getCurrentLatLngOrCrash(),
            ),
            child: Text(S().refresh),
          ),
        ],
      ),
    );
  }
}
