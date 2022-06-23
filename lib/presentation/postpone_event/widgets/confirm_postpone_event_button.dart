import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/postpone_event/postpone_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class ConfirmEventPostponeButton extends StatelessWidget {
  const ConfirmEventPostponeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: () async {
          final postponeEventCubit = context.read<PostponeEventCubit>();

          if (!await postponeEventCubit.validateDateTimeRange()) return;

          postponeEventCubit.getEventCosts();

          final result = await showDialog(
              context: context,
              builder: (ctx) {
                return BlocProvider.value(
                  value: context.read<PostponeEventCubit>(),
                  child: BlocConsumer<PostponeEventCubit, PostponeEventState>(
                    buildWhen: (previous, current) =>
                        previous.eventCosts != current.eventCosts ||
                        previous.eventCostsStatus != current.eventCostsStatus,
                    listenWhen: (previous, current) =>
                        previous.eventCosts != current.eventCosts,
                    listener: (context, state) {
                      if (state.eventCostsStatus.isFailure()) {
                        context.showSnackbarMessage(S().serverError);
                        postponeEventCubit.cancelEventCostsSub();
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
                              content: _getPostponeEventInfo(state),
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
              });

          postponeEventCubit.cancelEventCostsSub();

          if (result ?? false) {
            postponeEventCubit.postponeEvent();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(S().postpone),
        ),
      ),
    );
  }

  Text _getPostponeEventInfo(PostponeEventState state) {
    final eventCosts = state.eventCosts.getOrCrash();
    return Text(
      '${S().confirmEventPostpone} '
      '${formatDoubleToMoney(
        eventCosts.paymentProcessorFeeBalance,
        eventCosts.currency,
      )}',
    );
  }
}
