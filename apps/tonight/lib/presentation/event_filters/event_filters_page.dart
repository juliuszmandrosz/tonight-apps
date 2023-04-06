import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/core/places/places_cubit.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_city.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_currency.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_dress_code.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_is_concert.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_max_distance.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_min_age.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_music.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_place_option.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_price.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_submit_button.dart.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

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
      child: BlocListener<EventFiltersCubit, EventFiltersState>(
        listener: (context, state) {
          state.snackbarMessage.fold(
            () {},
            (message) => context.showSnackbarMessage(message),
          );
        },
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            floatingActionButton: const EventFiltersSubmitButton(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            appBar: TonightAppBar(title: S().filters),
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
                loadInProgress: (_) => const TicketLogoAnimation(),
                loadFailure: (_) => Container(),
                loadSuccess: (state) {
                  return SafeArea(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(15),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const EventFiltersPlaceOption(),
                            const SizedBox(height: 25),
                            const EventFiltersMaxDistance(),
                            BlocProvider(
                              create: (context) => getIt<PlacesCubit>(),
                              child: const EventFiltersCity(),
                            ),
                            const SizedBox(height: 25),
                            EventFiltersCurrency(
                              currencies: state.availableFilters.currencies,
                            ),
                            const SizedBox(height: 25),
                            const EventFiltersPrice(),
                            const SizedBox(height: 25),
                            EventFiltersMinAge(
                              availableMinAges: state.availableFilters.minAges,
                            ),
                            const SizedBox(height: 25),
                            EventFiltersMusic(
                              availableMusicalGenres:
                                  state.availableFilters.musicalGenres,
                            ),
                            const SizedBox(height: 25),
                            EventFiltersDressCode(
                              availableOutfits:
                                  state.availableFilters.allowedOutfits,
                            ),
                            const SizedBox(height: 25),
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
      ),
    );
  }
}
