import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/core/google_places/google_places_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
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
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersPage extends StatelessWidget {
  final BuildContext blocContext;

  const EventFiltersPage({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: blocContext.read<EventFiltersCubit>(),
        ),
        BlocProvider.value(
          value: blocContext.read<AvailableFiltersCubit>(),
        ),
      ],
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          floatingActionButton: const EventFiltersSubmitButton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          appBar: RaverAppBar(title: S().filters),
          body: BlocConsumer<AvailableFiltersCubit, AvailableFiltersState>(
            listener: (context, state) {
              if (state.maybeWhen(
                  orElse: () => false, loadFailure: (_) => true)) {
                context.pushRoute(
                  FailureRoute(
                    retryCallback: () => context
                        .read<AvailableFiltersCubit>()
                        .getAvailableFilters(),
                  ),
                );
              }
            },
            builder: (context, state) => state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadFailure: (_) => Container(),
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
      ),
    );
  }
}
