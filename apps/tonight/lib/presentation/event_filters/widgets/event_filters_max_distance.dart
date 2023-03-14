import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class EventFiltersMaxDistance extends StatefulWidget {
  const EventFiltersMaxDistance({Key? key}) : super(key: key);

  @override
  State<EventFiltersMaxDistance> createState() =>
      _EventFiltersMaxDistanceState();
}

class _EventFiltersMaxDistanceState extends State<EventFiltersMaxDistance>
    with WidgetsBindingObserver {
  var isPermissionGranted = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      await BlocProvider.of<UserLocationCubit>(context)
          .setLocationIfPermissionIsGranted();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.maxDistanceFilter.maxDistance !=
              current.filters.maxDistanceFilter.maxDistance ||
          previous.filters.maxDistanceFilter.enabled !=
              current.filters.maxDistanceFilter.enabled,
      builder: (context, filtersState) {
        return !filtersState.filters.maxDistanceFilter.enabled
            ? Container()
            : BlocBuilder<UserLocationCubit, UserLocationState>(
                builder: (context, locationState) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TonightHeadline(
                            text: S().maxDistance,
                            isSmallerVersion: true,
                          ),
                          if (locationState.isPermissionGranted)
                            TonightHeadline(
                              text:
                                  '${filtersState.filters.maxDistanceFilter.maxDistance}km',
                              isSmallerVersion: true,
                            ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          locationState.isPermissionGranted
                              ? Expanded(
                                  child: Slider(
                                    value: filtersState
                                        .filters.maxDistanceFilter.maxDistance
                                        .toDouble(),
                                    label:
                                        '${filtersState.filters.maxDistanceFilter.maxDistance.round()}',
                                    min: 5,
                                    max: 50,
                                    divisions: 9,
                                    onChanged: (value) => context
                                        .read<EventFiltersCubit>()
                                        .changeMaxDistance(
                                          value.round(),
                                        ),
                                  ),
                                )
                              : locationState.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : SizedBox(
                                      width: 300,
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<UserLocationCubit>()
                                            .openAppSettings(),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(S().enableLocation),
                                        ),
                                      ),
                                    )
                        ],
                      ),
                    ],
                  );
                },
              );
      },
    );
  }
}
