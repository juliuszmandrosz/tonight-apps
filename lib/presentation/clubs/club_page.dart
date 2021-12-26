import 'package:flutter/material.dart';
import 'package:raver/domain/clubs/club_entity.dart';

class ClubPage extends StatelessWidget {
  const ClubPage({
    Key? key,
    required Club club,
  })  : _club = club,
        super(key: key);

  final Club _club;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
