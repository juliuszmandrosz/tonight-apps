import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/core/google_places/google_places_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_city.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_currency.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_dress_code.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_is_concert.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_max_distance.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_min_age.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_music.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_place_option.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_price.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_submit_button.dart.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersPage extends StatefulWidget {
  const EventFiltersPage({Key? key}) : super(key: key);

  @override
  State<EventFiltersPage> createState() => _EventFiltersPageState();
}

class _EventFiltersPageState extends State<EventFiltersPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        floatingActionButton: const EventFiltersSubmitButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: RaverAppBar(title: S().filters),
        body: BlocBuilder<AvailableFiltersCubit, AvailableFiltersState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_) => Center(
              child: Text(S().errorLoadingFilters),
            ),
            loadSuccess: (state) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsetsDirectional.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const EventFiltersPlaceOption(),
                        const SizedBox(height: 20),
                        const EventFiltersMaxDistance(),
                        BlocProvider(
                          create: (context) => getIt<GooglePlacesCubit>(),
                          child: const EventFiltersCity(),
                        ),
                        const SizedBox(height: 25),
                        EventFiltersCurrency(
                          currencies: state.availableFilters.currencies,
                        ),
                        const SizedBox(height: 20),
                        const EventFiltersPrice(),
                        const SizedBox(height: 20),
                        EventFiltersMinAge(
                          availableMinAges: state.availableFilters.minAges,
                        ),
                        const SizedBox(height: 20),
                        EventFiltersMusic(
                          availableMusicalGenres:
                              state.availableFilters.musicalGenres,
                        ),
                        const SizedBox(height: 20),
                        EventFiltersDressCode(
                          availableOutfits:
                              state.availableFilters.allowedOutfits,
                        ),
                        const SizedBox(height: 20),
                        const EventFiltersIsConcert(),
                        const SizedBox(height: 60),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
