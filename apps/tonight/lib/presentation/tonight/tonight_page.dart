import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/tonight/widgets/tonight_sliver_app_bar.dart';
import 'package:tonight/presentation/wall_photos/wall_photos_page.dart';

class TonightPage extends StatelessWidget {
  const TonightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<WallPhotosBloc>()
            ..add(const WallPhotosEvent.wallPhotosFetched()),
        ),
      ],
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            TonightSliverAppBar(innerBoxIsScrolled: innerBoxIsScrolled),
          ],
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              SizedBox.shrink(),
              WallPhotosPage(),
            ],
          ),
        ),
      ),
    );
  }
}
