import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/add_wall_photo/wall_photo_venue_model.dart';
import 'package:tonight/application/select_club/select_club_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_list.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_search_field.dart';

class SelectClubPage extends StatelessWidget {
  const SelectClubPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO - add translation
      appBar: const TonightAppBar(title: 'Wybierz klub'),
      body: BlocProvider(
        create: (ctx) =>
            getIt<SelectClubBloc>()..add(const SelectClubEvent.venuesFetched()),
        child: BlocListener<SelectClubBloc, SelectClubState>(
          listener: (context, selectClubState) async {
            if (selectClubState.initialStatus.isFailure()) {
              context.pushRoute(
                FailureRoute(
                  retryCallback: () => context
                      .read<SelectClubBloc>()
                      .add(const SelectClubEvent.venuesFetched()),
                ),
              );
            }
            selectClubState.snackbarMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );

            if (selectClubState.selectedVenue.isSome()) {
              await context.popRoute<WallPhotoVenue>(
                selectClubState.selectedVenue.getOrCrash(),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<SelectClubBloc, SelectClubState>(
              builder: (context, state) {
                switch (state.initialStatus) {
                  case CubitStatus.initial:
                    return Container();
                  case CubitStatus.loading:
                    return const WaveLoadingIndicator();
                  case CubitStatus.failure:
                    return Container();
                  case CubitStatus.success:
                    return RefreshIndicator(
                      onRefresh: () async => context
                          .read<SelectClubBloc>()
                          .add(const SelectClubEvent.venuesFetched()),
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
      ),
    );
  }
}
