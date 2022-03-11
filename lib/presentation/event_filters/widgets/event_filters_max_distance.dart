import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_headline.dart';

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
    WidgetsBinding.instance!.addObserver(this);
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
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.maxDistance != current.filters.maxDistance ||
          previous.filters.isMaxDistanceOption !=
              current.filters.isMaxDistanceOption,
      builder: (context, filtersState) {
        return !filtersState.filters.isMaxDistanceOption
            ? Container()
            : BlocBuilder<UserLocationCubit, UserLocationState>(
                builder: (context, locationState) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RaverHeadline(text: S().maxDistance),
                          if (locationState.isPermissionGranted)
                            RaverHeadline(
                              text: '${filtersState.filters.maxDistance}km',
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          locationState.isPermissionGranted
                              ? Expanded(
                                  child: Slider(
                                    value: filtersState.filters.maxDistance
                                        .toDouble(),
                                    label:
                                        '${filtersState.filters.maxDistance.round()}',
                                    activeColor: DefaultColors.primaryColor,
                                    inactiveColor:
                                        DefaultColors.backgroundColor,
                                    min: 5,
                                    max: 50,
                                    divisions: 9,
                                    onChanged: (value) => context
                                        .read<EventFiltersCubit>()
                                        .changeMaxDistance(value.round()),
                                  ),
                                )
                              : locationState.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : ElevatedButton(
                                      onPressed: () => context
                                          .read<UserLocationCubit>()
                                          .openAppSettings(),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(S().enableLocation),
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
