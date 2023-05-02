import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:translations/raver_translations.dart';

class CancelEventButton extends StatelessWidget {
  const CancelEventButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () async {
        final eventCubit = context.read<UpcomingLiveEventCubit>();
        eventCubit.getEventCosts();
        final result = await showDialog(
          context: context,
          builder: (ctx) {
            return BlocProvider.value(
              value: context.read<UpcomingLiveEventCubit>(),
              child:
                  BlocConsumer<UpcomingLiveEventCubit, UpcomingLiveEventState>(
                buildWhen: (previous, current) =>
                    previous.eventCosts != current.eventCosts ||
                    previous.eventCostsStatus != current.eventCostsStatus,
                listenWhen: (previous, current) =>
                    previous.eventCosts != current.eventCosts,
                listener: (context, state) {
                  if (state.eventCostsStatus.isFailure()) {
                    context.showSnackbarMessage(S().serverError);
                    eventCubit.cancelEventCostsSub();
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
                              onPressed: () => Navigator.of(context).pop(false),
                              child: Text(S().no.toUpperCase()),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
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
      label: Text(S().cancelEvent),
      icon: const FaIcon(
        FontAwesomeIcons.ban,
        size: 20,
      ),
    );
  }

  Text _getCancelEventInfo(UpcomingLiveEventState state) {
    final eventCosts = state.eventCosts.getOrCrash();
    return Text(
      '${S().confirmEventCancelation} '
      '${formatDoubleToMoney(
        eventCosts.paymentProcessorFeeBalance,
        eventCosts.currency,
      )}',
    );
  }
}
