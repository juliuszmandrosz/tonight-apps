import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/generated/l10n.dart';

import 'clubs_tab/clubs_page.dart';
import 'events_tab/event_overview_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserLocationCubit, UserLocationState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SafeArea(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(text: S().events(2)),
                          Tab(text: S().clubs(2)),
                        ],
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              EventOverviewPage(),
                              ClubsPage(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
