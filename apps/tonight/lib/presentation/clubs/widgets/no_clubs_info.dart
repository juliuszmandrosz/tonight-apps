import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_list/clubs_bloc.dart';
import 'package:translations/raver_translations.dart';

class NoClubsInfo extends StatelessWidget {
  final Function(BuildContext context) onClubsRefreshed;

  const NoClubsInfo({
    required this.onClubsRefreshed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubsBloc, ClubsState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S().clubs(0),
                style: context.titleMedium,
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () => onClubsRefreshed(context),
                child: Text(S().refresh),
              ),
            ],
          ),
        );
      },
    );
  }
}
