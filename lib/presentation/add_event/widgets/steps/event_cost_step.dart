import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/presentation/add_event/widgets/cost/apply_discount_switch.dart';
import 'package:raver_partners/presentation/add_event/widgets/cost/available_discounts.dart';
import 'package:raver_partners/presentation/add_event/widgets/cost/current_fee.dart';
import 'package:raver_partners/presentation/add_event/widgets/cost/exclusive_event_info.dart';
import 'package:raver_partners/presentation/add_event/widgets/cost/exclusive_event_switch.dart';
import 'package:raver_partners/presentation/core/dots_loading_indicator.dart';

class EventCostStep extends StatelessWidget {
  const EventCostStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.isExclusiveEvent != current.isExclusiveEvent ||
          previous.isDiscountApplied != current.isDiscountApplied ||
          previous.availableDiscounts != current.availableDiscounts ||
          previous.eventFeesStatus != current.eventFeesStatus,
      builder: (context, state) {
        return state.eventFeesStatus.isLoading()
            ? const DotsLoadingIndicator()
            : Column(
                children: [
                  const CurrentFee(),
                  const Divider(),
                  const ExclusiveEventSwitch(),
                  const Divider(),
                  if (!state.isExclusiveEvent)
                    Column(
                      children: const [
                        SizedBox(height: 10),
                        ExclusiveEventInfo(),
                      ],
                    ),
                  if (state.isExclusiveEvent &&
                      state.availableDiscounts.isNotEmpty)
                    Column(
                      children: const [
                        ApplyDiscountSwitch(),
                        Divider(),
                      ],
                    ),
                  if (state.isDiscountApplied &&
                      state.availableDiscounts.isNotEmpty)
                    Column(
                      children: const [
                        SizedBox(height: 10),
                        AvailableDiscounts(),
                      ],
                    ),
                ],
              );
      },
    );
  }
}
