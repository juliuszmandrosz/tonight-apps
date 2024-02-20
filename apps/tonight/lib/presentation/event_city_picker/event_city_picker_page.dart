import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_city_picker/event_city_picker_bloc.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_city_picker/widgets/event_city_picker_prediction_list.dart';
import 'package:tonight/presentation/event_city_picker/widgets/event_picker_text_field.dart';
import 'package:translations/translations.dart';

class EventCityPickerPage extends StatelessWidget {
  final BuildContext blocContext;
  final CityFilter selectedCity;

  const EventCityPickerPage({
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
            value: blocContext.read<EventsBloc>(),
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
                create: (context) => getIt<EventCityPickerBloc>()
                  ..add(
                    EventCityPickerEvent.pickerInitialized(
                      filter: selectedCity,
                      availableCities: filters.cities,
                    ),
                  ),
                child: BlocBuilder<EventCityPickerBloc, EventCityPickerState>(
                  builder: (context, state) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            EventPickerTextField(),
                            SizedBox(height: 20),
                            EventCityPickerPredictionList(),
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
