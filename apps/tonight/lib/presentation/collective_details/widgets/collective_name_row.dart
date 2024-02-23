import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';

class CollectiveNameRow extends StatelessWidget {
  final Collective collective;

  const CollectiveNameRow({super.key, required this.collective});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: AutoSizeText(
            collective.collectiveName,
            style: context.titleLarge,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
