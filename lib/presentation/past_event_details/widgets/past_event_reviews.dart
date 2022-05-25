import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              child: RaverPartnersHeadline(text: S().opinions(2)),
            ),
            const SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, i) => const Divider(),
              itemCount: state.reviews.length + 1,
              itemBuilder: (ctx, i) => i >= state.reviews.length
                  ? const SizedBox()
                  : ReviewListTile(review: state.reviews[i]),
            ),
          ],
        );
      },
    );
  }
}
