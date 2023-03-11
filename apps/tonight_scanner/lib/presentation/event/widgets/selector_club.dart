import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/selector_club/selector_club_cubit.dart';

class SelectorClub extends StatelessWidget {
  const SelectorClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final club =
        context.read<SelectorClubCubit>().state.selectorClub.getOrCrash();
    return AutoSizeText(
      club.clubName,
      maxLines: 1,
      style: context.headline5.copyWith(
        color: context.primaryColor,
      ),
    );
  }
}
