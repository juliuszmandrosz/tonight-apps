import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_details/club_details_cubit.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details/back_button.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details/club_description.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details/club_details_tabs.dart';

class ClubPage extends StatelessWidget {
  final Club? club;
  final String? clubId;
  final String? heroTag;

  const ClubPage({
    Key? key,
    this.clubId,
    this.club,
    this.heroTag,
  })  : assert((club != null || clubId != null), 'Club not available'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          final cubit = getIt<ClubDetailsCubit>();
          clubId != null
              ? cubit.getClubById(clubId!)
              : cubit.addClubToState(club!);
          return cubit;
        })
      ],
      child: BlocBuilder<ClubDetailsCubit, ClubDetailsState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (state) {
              final club = state.club;
              return Scaffold(
                body: SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 200,
                              child: Stack(
                                children: [
                                  Align(
                                    child: Hero(
                                      tag: heroTag ?? "",
                                      //this just wont animate hero
                                      child: Container(
                                        height: 200,
                                        alignment: Alignment.topCenter,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                Image.network(club.clubImageUrl)
                                                    .image,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment:
                                        AlignmentDirectional(-0.95, -0.7),
                                    child: BackButtonWidget(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      ClubDescription(
                        club: club,
                      ),
                      ClubDetailsTabs(
                        club: club,
                      ),
                    ],
                  ),
                ),
              );
            },
            loadFailure: (state) => Center(
              child: Text(state.clubFailure.toString()),
            ),
          );
        },
      ),
    );
  }
}
