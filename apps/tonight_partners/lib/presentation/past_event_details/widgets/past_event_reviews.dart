import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/past_event_details/past_event_details_cubit.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_partners/presentation/past_event_details/widgets/review_list_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class PastEventReviews extends StatelessWidget {
  const PastEventReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PastEventDetailsCubit, PastEventDetailsState>(
      builder: (context, state) {
        return Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: RaverPartnersHeadline(
                text: state.reviews.isEmpty ? S().noOpinions : S().opinions(2),
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 20),
            state.reviews.isEmpty
                ? Lottie.asset('assets/animations/no_data.json')
                : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, i) => const Divider(),
                    itemCount: state.reviews.length + 1,
                    itemBuilder: (ctx, i) => i >= state.reviews.length
                        ? state.hasReachedMax
                            ? const SizedBox()
                            : const BottomLoader()
                        : Center(
                            child: ReviewListTile(
                              review: state.reviews[i],
                            ),
                          ),
                  ),
          ],
        );
      },
    );
  }
}
