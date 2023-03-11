import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/core/places/places_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/club_filters/widgets/club_filters_city.dart';
import 'package:raver/presentation/club_filters/widgets/club_filters_currency.dart';
import 'package:raver/presentation/club_filters/widgets/club_filters_max_distance.dart';
import 'package:raver/presentation/club_filters/widgets/club_filters_place_option.dart';
import 'package:raver/presentation/club_filters/widgets/club_filters_submit_button.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/core/ticket_logo_animation.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubFiltersPage extends StatelessWidget {
  final BuildContext blocContext;

  const ClubFiltersPage({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: blocContext.read<ClubFiltersCubit>(),
        ),
        BlocProvider.value(
          value: blocContext.read<AvailableFiltersCubit>(),
        ),
      ],
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          floatingActionButton: const ClubFiltersSubmitButton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          appBar: RaverAppBar(title: S().filters),
          body: BlocConsumer<AvailableFiltersCubit, AvailableFiltersState>(
            listener: (context, state) {
              if (state.maybeWhen(orElse: () => false, loadFailure: (_) => true)) {
                context.pushRoute(
                  FailureRoute(
                    retryCallback: () => context.read<AvailableFiltersCubit>().getAvailableFilters(),
                  ),
                );
              }
            },
            builder: (context, state) => state.map(
              initial: (_) => Container(),
              loadFailure: (_) => Container(),
              loadInProgress: (_) => const TicketLogoAnimation(),
              loadSuccess: (state) {
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(15),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const ClubFiltersPlaceOption(),
                          const SizedBox(height: 25),
                          const ClubFiltersMaxDistance(),
                          BlocProvider(
                            create: (context) => getIt<PlacesCubit>(),
                            child: const ClubFiltersCity(),
                          ),
                          const SizedBox(height: 25),
                          ClubFiltersCurrency(
                            currencies: state.availableFilters.currencies,
                          ),
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
