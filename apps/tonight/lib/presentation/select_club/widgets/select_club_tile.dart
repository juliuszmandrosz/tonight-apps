import 'package:clubs/domain/club/club_entity.dart';
import 'package:common/presentation/circle_network_photo.dart';
import 'package:common/presentation/dense_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/select_club/select_club_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';

class SelectClubTile extends StatelessWidget {
  final Club club;

  const SelectClubTile({required this.club, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context.read<SelectClubCubit>().selectClub(club),
      leading: CircleNetworkPhoto(
        photoUrl: club.clubImageUrl,
        containerSize: 18,
        loaderSize: 16,
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: TonightHeadline(
          text: club.clubName,
          isSmallerVersion: true,
        ),
      ),
    );
  }
}
