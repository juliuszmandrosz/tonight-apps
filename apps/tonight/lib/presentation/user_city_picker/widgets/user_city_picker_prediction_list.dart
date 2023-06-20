import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/user_city_picker/user_city_picker_bloc.dart';
import 'package:tonight/presentation/user_city_picker/widgets/user_city_picker_prediction_tile.dart';
import 'package:translations/translations.dart';

class UserCityPickerPredictionList extends StatelessWidget {
  const UserCityPickerPredictionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCityPickerBloc, UserCityPickerState>(
      builder: (context, state) {
        switch (state.searchPlacesStatus) {
          case CubitStatus.initial:
            // TODO - add translation
            return Text(
              'Wpisz minimum 3 znaki',
              style: context.titleSmall,
              textAlign: TextAlign.center,
            );
          case CubitStatus.loading:
            return const WaveLoadingIndicator(size: 30);
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => context.read<UserCityPickerBloc>().add(
                    UserCityPickerEvent.searchChanged(
                      state.previousPlacesSearch,
                    ),
                  ),
              isSocketException: state.placesFailure.fold(
                () => false,
                (f) => f.maybeWhen(
                  noConnection: () => true,
                  orElse: () => false,
                ),
              ),
            );
          case CubitStatus.success:
            return state.places.isEmpty && state.previousPlacesSearch.isNotEmpty
                ? Text(
                    S().noCitiesForPhrase,
                    textAlign: TextAlign.center,
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.places.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (_, i) => UserCityPickerPredictionTile(
                      place: state.places[i],
                    ),
                  );
        }
      },
    );
  }
}
