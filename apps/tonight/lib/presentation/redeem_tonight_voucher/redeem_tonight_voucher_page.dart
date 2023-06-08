import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:tonight/application/redeem_tonight_voucher/redeem_tonight_voucher_cubit.dart';
import 'package:tonight/domain/user_tonight_vouchers/user_tonight_voucher_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/commons/widgets/countdown_timer.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/redeem_tonight_voucher/widgets/redeem_tonight_voucher_button.dart';
import 'package:tonight/presentation/redeem_tonight_voucher/widgets/user_tonight_voucher_expired_info.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class RedeemTonightVoucherPage extends StatefulWidget {
  final UserTonightVoucher voucher;

  const RedeemTonightVoucherPage({
    required this.voucher,
    Key? key,
  }) : super(key: key);

  @override
  State<RedeemTonightVoucherPage> createState() =>
      _RedeemTonightVoucherPageState();
}

class _RedeemTonightVoucherPageState extends State<RedeemTonightVoucherPage> {
  @override
  void initState() {
    ScreenBrightness().setScreenBrightness(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RedeemTonightVoucherCubit>(),
      child: BlocListener<RedeemTonightVoucherCubit, RedeemTonightVoucherState>(
        listener: (context, state) {
          state.snackbarMessage.fold(
            () => null,
            (message) => context.showSnackbarMessage(message),
          );

          if (state.redeemVoucherStatus.isSuccess()) {
            context.router.popUntil(
              (route) => route.settings.name == WelcomeLoaderRoute.name,
            );

            // TODO - add translation
            context.showSnackbarMessage('Na zdrowie! 🍻');
          }
        },
        child: Scaffold(
          appBar: TonightAppBar(
            title: '',
            backgroundColor: context.backgroundColor,
          ),
          body:
              BlocBuilder<RedeemTonightVoucherCubit, RedeemTonightVoucherState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: widget.voucher.isExpired
                    ? const UserTonightVoucherExpiredInfo()
                    : Column(
                        children: [
                          CountdownTimer(
                            secondsLeft: widget.voucher.validUntil
                                .difference(DateTime.now())
                                .inSeconds,
                            onTimerCompleted: () {
                              // TODO - add translation
                              context.showSnackbarMessage(
                                'Czas na odebranie nagrody minął',
                              );
                              context.popRoute();
                            },
                            textStyle: context.headlineMedium,
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const FaIcon(FontAwesomeIcons.gift, size: 20),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  widget.voucher.voucherName,
                                  style: context.titleLarge,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const FaIcon(FontAwesomeIcons.building, size: 20),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  widget.voucher.venueName,
                                  style: context.titleLarge,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const FaIcon(FontAwesomeIcons.fire, size: 20),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  widget.voucher.eventName,
                                  style: context.titleLarge,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          RedeemTonightVoucherButton(
                            eventId: widget.voucher.eventId,
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    ScreenBrightness().resetScreenBrightness();
    super.dispose();
  }
}
