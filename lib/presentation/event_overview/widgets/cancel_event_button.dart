import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:raver_common/raver_common.dart';

class CancelEventButton extends StatelessWidget {
  const CancelEventButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () async {
              final eventCubit = context.read<UpcomingLiveEventCubit>();
              eventCubit.getEventCosts();
              final result = await showDialog(
                context: context,
                builder: (ctx) {
                  return BlocProvider.value(
                    value: context.read<UpcomingLiveEventCubit>(),
                    child: BlocConsumer<UpcomingLiveEventCubit,
                        UpcomingLiveEventState>(
                      buildWhen: (previous, current) =>
                          previous.eventCosts != current.eventCosts ||
                          previous.eventCostsStatus != current.eventCostsStatus,
                      listenWhen: (previous, current) =>
                          previous.eventCosts != current.eventCosts,
                      listener: (context, state) {
                        if (state.eventCostsStatus.isFailure()) {
                          context.showSnackbarMessage(S().serverError);
                          Navigator.of(context).pop(false);
                        }
                      },
                      builder: (context, state) {
                        return state.eventCostsStatus.isLoading()
                            ? AlertDialog(
                                content: SizedBox(
                                  height: 200,
                                  child: SpinKitThreeBounce(
                                    size: 30,
                                    color: context.onSurfaceColor,
                                  ),
                                ),
                              )
                            : AlertDialog(
                                title: Text(S().confirm),
                                content: _getCancelEventInfo(state),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
                                    child: Text(S().no.toUpperCase()),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(true),
                                    child: Text(S().yes.toUpperCase()),
                                  ),
                                ],
                              );
                      },
                    ),
                  );
                },
              );

              eventCubit.cancelEventCostsSub();

              if (result ?? false) {
                eventCubit.cancelEvent();
              }
            },
            child: Text(S().cancelEvent),
          ),
        ),
      ],
    );
  }

  Text _getCancelEventInfo(UpcomingLiveEventState state) {
    final eventCosts = state.eventCosts.getOrCrash();
    return Text(
      '${S().confirmEventCancelation} '
      '${formatDoubleToMoney(
        eventCosts.paymentProcessorFeeBalance / 100,
        eventCosts.currency,
      )}',
    );
  }
}
