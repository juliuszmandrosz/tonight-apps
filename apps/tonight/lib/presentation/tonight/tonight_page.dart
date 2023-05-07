import 'package:flutter/material.dart';
import 'package:tonight/presentation/tonight/widgets/tonight_sliver_app_bar.dart';
import 'package:tonight/presentation/tonight_events/tonight_events_page.dart';
import 'package:tonight/presentation/wall_photos/wall_photos_page.dart';

class TonightPage extends StatelessWidget {
  const TonightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
    );
  }
}
