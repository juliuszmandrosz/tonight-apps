import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:translations/translations.dart';

class SelectClubEnableLocation extends StatelessWidget {
  const SelectClubEnableLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Aby dodać zdjęcie, musisz włączyć lokalizację'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () =>
                context.read<UserLocationCubit>().openAppSettings(),
            child: Text(S().enableLocation),
          ),
        ],
      ),
    );
  }
}
