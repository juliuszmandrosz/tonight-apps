import 'package:auto_route/auto_route.dart';
import 'package:clubs/domain/club/club_entity.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/select_club/select_club_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_enable_location.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_list.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_no_near_clubs_info.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_search_field.dart';

class SelectClubPage extends StatefulWidget {
  const SelectClubPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectClubPage> createState() => _SelectClubPageState();
}

class _SelectClubPageState extends State<SelectClubPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      await context
          .read<UserLocationCubit>()
          .setLocationIfPermissionIsGranted();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> _fetchClubs(BuildContext context) async {
    final locationCubit = context.read<UserLocationCubit>();
    final selectClubCubit = context.read<SelectClubCubit>();
    await selectClubCubit.fetchClubs(
      locationCubit.getCurrentLatLngOrCrash(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO - add translation
      appBar: const TonightAppBar(title: 'Wybierz klub'),
      body: BlocBuilder<UserLocationCubit, UserLocationState>(
        builder: (context, userLocationState) {
          final locationCubit = context.read<UserLocationCubit>();
          return !userLocationState.isPermissionGranted
              ? const SelectClubEnableLocation()
              : BlocProvider(
                  create: (ctx) => getIt<SelectClubCubit>()
                    ..fetchClubs(
                      locationCubit.getCurrentLatLngOrCrash(),
                    ),
                  child: BlocListener<SelectClubCubit, SelectClubState>(
                    listener: (context, selectClubState) async {
                      if (selectClubState.initialStatus.isFailure()) {
                        context.pushRoute(
                          FailureRoute(
                            retryCallback: () => _fetchClubs(context),
                          ),
                        );
                      }
                      selectClubState.snackbarMessage.fold(
                        () {},
                        (message) => context.showSnackbarMessage(message),
                      );

                      if (selectClubState.selectedClub.isSome()) {
                        context.popRoute<Club>(
                          selectClubState.selectedClub.getOrCrash(),
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: BlocBuilder<SelectClubCubit, SelectClubState>(
                        builder: (context, state) {
                          switch (state.initialStatus) {
                            case CubitStatus.initial:
                              return Container();
                            case CubitStatus.loading:
                              return const TicketLogoAnimation();
                            case CubitStatus.failure:
                              return Container();
                            case CubitStatus.success:
                              return state.clubs.isEmpty &&
                                      state.searchPhrase.isEmpty
                                  ? const SelectClubNoNearClubsInfo()
                                  : RefreshIndicator(
                                      onRefresh: () async =>
                                          await _fetchClubs(context),
                                      child: Column(
                                        children: const [
                                          SelectClubSearchField(),
                                          SizedBox(height: 16),
                                          SelectClubList(),
                                        ],
                                      ),
                                    );
                          }
                        },
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
