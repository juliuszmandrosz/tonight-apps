import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_translations/generated/l10n.dart';

class AddEventStepsHeader extends StatelessWidget {
  const AddEventStepsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.currentStep != current.currentStep,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              _getHeaderText(state.currentStep),
              style: context.headline5,
              maxLines: 1,
            ),
          ),
        );
      },
    );
  }

  String _getHeaderText(AddEventStep currentStep) {
    switch (currentStep) {
      case AddEventStep.nameAndDesc:
        return S().nameAndDesc;

      case AddEventStep.dateTime:
        return S().dateAndTime;

      case AddEventStep.details:
        return S().details;

      case AddEventStep.tickets:
        return S().tickets(2);

      case AddEventStep.concertInfo:
        return S().concertInfo;

      case AddEventStep.photo:
        return S().photos(1);

      case AddEventStep.urlLinks:
        return S().urlLinks;

      case AddEventStep.summary:
        return S().summary;

      default:
        return '';
    }
  }
}
