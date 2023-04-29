import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/tonight/widgets/tonight_sliver_app_bar.dart';
import 'package:tonight/presentation/tonight_events/tonight_events_page.dart';
import 'package:tonight/presentation/wall_photos/wall_photos_page.dart';

class TonightPage extends StatelessWidget {
  const TonightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final location = context.read<UserLocationCubit>().state.userLocation;
    return BlocProvider(
      create: (context) => getIt<WallPhotosBloc>()
        ..add(WallPhotosEvent.wallPhotosFetched(location)),
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            TonightSliverAppBar(innerBoxIsScrolled: innerBoxIsScrolled),
          ],
          body: const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                TonightEventsPage(),
                WallPhotosPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
