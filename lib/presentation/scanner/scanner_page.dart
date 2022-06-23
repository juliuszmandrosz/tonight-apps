import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/application/scanner/scanner_cubit.dart';
import 'package:raver_scanner/application/selector_club/selector_club_cubit.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app_bar.dart';
import 'package:raver_scanner/presentation/core/ticket_logo_animation.dart';
import 'package:raver_scanner/presentation/scanner/widgets/qr_scanner.dart';
import 'package:raver_scanner/presentation/scanner/widgets/scan_another_ticket_button.dart';
import 'package:raver_scanner/presentation/scanner/widgets/scan_result.dart';
import 'package:raver_scanner/presentation/scanner/widgets/user_rewards.dart';
import 'package:raver_translations/raver_translations.dart';

class ScannerPage extends StatelessWidget {
  final BuildContext blocContext;

  const ScannerPage({required this.blocContext, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: blocContext.read<CurrentEventCubit>(),
        ),
        BlocProvider.value(
          value: blocContext.read<SelectorClubCubit>(),
        ),
      ],
      child: BlocProvider(
        create: (context) => getIt<ScannerCubit>(
          param1: context.read<CurrentEventCubit>(),
          param2: context.read<SelectorClubCubit>(),
        ),
        child: Scaffold(
          floatingActionButton: const ScanAnotherTicketButton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          appBar: RaverScannerAppBar(title: S().scanTicket),
          body: BlocBuilder<ScannerCubit, ScannerState>(
            builder: (context, state) {
              switch (state.status) {
                case CubitStatus.initial:
                  return const QrScanner();

                case CubitStatus.loading:
                  return const TicketLogoAnimation();

                case CubitStatus.failure:
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: ScanResult(
                      color: Colors.red.lighten(),
                      icon: Icons.remove,
                      message: state.errorMessage.getOrCrash(),
                    ),
                  );

                case CubitStatus.success:
                  final ticket = state.lastScannedTicket.getOrCrash();
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(
                            children: [
                              ScanResult(
                                color: ticket.isVip
                                    ? Colors.blue.lighten()
                                    : Colors.green.lighten(),
                                icon: ticket.isVip
                                    ? FontAwesomeIcons.crown
                                    : FontAwesomeIcons.check,
                                message: ticket.isVip
                                    ? S().vipValidTicket
                                    : S().validTicket,
                              ),
                              if (state.userRewards.isNotEmpty)
                                UserRewards(
                                  userRewards: state.userRewards,
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 60),
                      ],
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
