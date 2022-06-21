import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver/domain/clubs/club_rewards_with_attendance_entity.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class UserAttendance extends StatelessWidget {
  final ClubRewardsWithAttendance clubRewardsWithAttendance;

  const UserAttendance({
    required this.clubRewardsWithAttendance,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: AutoSizeText(
            '${S().yourNumberOfEntries}: '
            '${clubRewardsWithAttendance.userAttendance}',
            maxLines: 1,
            style: context.subtitle1,
          ),
        ),
      ),
    );
  }
}
