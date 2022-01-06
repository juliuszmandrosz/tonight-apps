import 'package:flutter/material.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';

class ClubPage extends StatelessWidget {
  const ClubPage({
    Key? key,
    required ClubOverview clubOverview,
  })  : _clubOverview = clubOverview,
        super(key: key);

  final ClubOverview _clubOverview;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
