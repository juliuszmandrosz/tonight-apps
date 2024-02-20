import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_city_picker/club_city_picker_bloc.dart';
import 'package:tonight/application/clubs/club_list/clubs_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/club_city_picker/widgets/club_city_picker_prediction_list.dart';
import 'package:tonight/presentation/club_city_picker/widgets/club_picker_text_field.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:translations/translations.dart';

class ClubCityPickerPage extends StatelessWidget {
  final BuildContext blocContext;
  final CityFilter selectedCity;

  const ClubCityPickerPage({
    required this.blocContext,
    required this.selectedCity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(title: S().place),
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: blocContext.read<AvailableFiltersCubit>(),
          ),
          BlocProvider.value(
            value: blocContext.read<ClubsBloc>(),
          ),
        ],
        child: BlocBuilder<AvailableFiltersCubit, AvailableFiltersState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loadInProgress: () => const WaveLoadingIndicator(),
              loadFailure: (_) => FailureInfo(
                retryCallback:
                    context.read<AvailableFiltersCubit>().getAvailableFilters,
              ),
              loadSuccess: (filters) => BlocProvider(
                create: (context) => getIt<ClubCityPickerBloc>()
                  ..add(
                    ClubCityPickerEvent.pickerInitialized(
                      filter: selectedCity,
                      availableCities: filters.cities,
                    ),
                  ),
                child: BlocBuilder<ClubCityPickerBloc, ClubCityPickerState>(
                  builder: (context, state) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ClubPickerTextField(),
                            SizedBox(height: 20),
                            ClubCityPickerPredictionList(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
