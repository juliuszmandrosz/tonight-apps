import 'package:flutter/material.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/presentation/collective_details/widgets/collective_name_row.dart';
import 'package:tonight/presentation/collective_details/widgets/collective_rating_row.dart';

class CollectiveDescription extends StatelessWidget {
  final Collective collective;

  const CollectiveDescription({
    super.key,
    required this.collective,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CollectiveNameRow(collective: collective),
          const SizedBox(height: 12),
          CollectiveRatingRow(
            rating: collective.reviewAvg,
            rateCount: collective.reviewCount,
          )
        ],
      ),
    );
  }
}
