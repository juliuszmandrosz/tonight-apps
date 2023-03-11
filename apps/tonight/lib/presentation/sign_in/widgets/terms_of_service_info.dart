import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/terms_of_service/terms_of_service_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TermsOfServiceInfo extends StatelessWidget {
  const TermsOfServiceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TermsOfServiceCubit>(
        param1: context.read<NetworkCheckCubit>(),
      ),
      child: Builder(builder: (context) {
        return BlocListener<TermsOfServiceCubit, TermsOfServiceState>(
          listener: (context, state) {
            state.snackbarMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );

            state.status.isLoading()
                ? context.loaderOverlay.show()
                : context.loaderOverlay.hide();

            if (state.status.isSuccess() && state.documentUrl.isSome()) {
              launchURL(Uri.parse(state.documentUrl.getOrCrash()));
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const FaIcon(FontAwesomeIcons.circleInfo),
              const SizedBox(width: 15),
              Flexible(
                child: RichText(
                  text: TextSpan(
                    text: '${S().byContinuingYouAgreeTo} ',
                    style: context.bodyText2.copyWith(
                      color: context.secondaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: S().termsOfService.toLowerCase(),
                        style: context.bodyText2.copyWith(
                          color: context.primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context
                              .read<TermsOfServiceCubit>()
                              .getTermsOfService(),
                      ),
                      TextSpan(
                        text: ' ${S().and} ',
                        style: context.bodyText2.copyWith(
                          color: context.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: S().onPrivacyPolicy.toLowerCase(),
                        style: context.bodyText2.copyWith(
                          color: context.primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context
                              .read<TermsOfServiceCubit>()
                              .getPrivacyPolicy(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
