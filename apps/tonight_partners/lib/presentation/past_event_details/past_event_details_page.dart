import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/past_event_details/past_event_details_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_app_bar.dart';
import 'package:tonight_partners/presentation/past_event_details/widgets/past_event_details_list_view.dart';
import 'package:translations/translations.dart';

class PastEventDetailsPage extends StatelessWidget {
  final Event event;

  const PastEventDetailsPage({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PastEventDetailsCubit>()..initData(event),
      child: BlocListener<PastEventDetailsCubit, PastEventDetailsState>(
        listenWhen: (previous, current) =>
            previous.errorMessage != current.errorMessage ||
            previous.reviewReportStatus != current.reviewReportStatus,
        listener: (context, state) {
          state.errorMessage.fold(
            () {},
            (error) => context.showSnackbarMessage(error),
          );

          if (state.reviewReportStatus.isSuccess()) {
            context.showSnackbarMessage(S().reviewReportedSuccessfully);
          }
        },
        child: Scaffold(
          appBar: TonightPartnersAppBar(title: S().eventOverview),
          body: const Padding(
            padding: EdgeInsets.all(15),
            child: PastEventDetailsListView(),
          ),
        ),
      ),
    );
  }
}
