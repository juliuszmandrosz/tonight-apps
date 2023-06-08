import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/events/event_details/event_details_cubit.dart';
import 'package:tonight/application/tonight_events/models/event_voucher_model.dart';
import 'package:tonight/presentation/utils/show_confirm_phone_number_dialog.dart';

class VoucherModal extends StatefulWidget {
  final EventVoucher voucher;
  final bool isVisible;

  const VoucherModal({
    required this.voucher,
    required this.isVisible,
    Key? key,
  }) : super(key: key);

  @override
  State<VoucherModal> createState() => _VoucherModalState();
}

class _VoucherModalState extends State<VoucherModal> {
  var isClosed = false;

  @override
  Widget build(BuildContext context) {
    const radius = 50.0;

    return Material(
      color: Colors.transparent,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) => SlideTransition(
          position: Tween(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn),
          ),
          child: FadeTransition(
            opacity: Tween(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.fastOutSlowIn,
              ),
            ),
            child: child,
          ),
        ),
        child: !widget.isVisible || isClosed
            ? const SizedBox.shrink()
            : InkWell(
                onTap: () async {
                  if (!context
                      .read<AuthCubit>()
                      .checkIfPhoneNumberIsVerified()) {
                    final result = await showConfirmPhoneNumberDialog(context);
                    if (result != true) return;
                  }

                  if (context.mounted) {
                    // TODO - add translation
                    final result =
                        await context.showConfirmationDialogWithCustomMessage(
                      'Czy na pewno chcesz wykorzystać ten voucher? Mozesz aktywować jeden '
                      'voucher specjalny raz na 12 godzin. Po aktywacji jest wazny przez 10 minut, upewnij się, ze zdazysz do baru.',
                    );

                    if (result != true) return;

                    if (context.mounted) {
                      context
                          .read<EventDetailsCubit>()
                          .useVoucher(widget.voucher.id);
                    }
                  }
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    LayoutBuilder(builder: (context, constraints) {
                      final modalHeight = constraints.maxWidth * 0.3;
                      return Container(
                        height: modalHeight,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: context.primaryColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.elliptical(radius, radius),
                            topRight: Radius.elliptical(radius, radius),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Text(
                              widget.voucher.voucherName,
                              style: context.titleLarge,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    }),
                    const Positioned(
                      top: -20, // Adjust this value as needed
                      left: 0,
                      right: 0,
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.gift,
                          size: 40.0,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -18,
                      right: 5,
                      child: Center(
                        child: IconButton(
                          onPressed: () => setState(() {
                            isClosed = true;
                          }),
                          icon: const FaIcon(FontAwesomeIcons.xmark),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
