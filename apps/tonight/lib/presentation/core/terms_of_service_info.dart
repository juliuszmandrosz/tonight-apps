import 'package:common/common.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/app_links/terms_of_service_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:translations/translations.dart';

class TermsOfServiceInfo extends StatelessWidget {
  const TermsOfServiceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppLinksCubit>(
        param1: context.read<NetworkCheckCubit>(),
      ),
      child: Builder(builder: (context) {
        return BlocListener<AppLinksCubit, TermsOfServiceState>(
          listener: (context, state) {
            state.snackbarMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );

            state.status.isLoading()
                ? context.loaderOverlay.show()
                : context.loaderOverlay.hide();

            if (state.status.isSuccess() && state.url.isSome()) {
              launchURL(Uri.parse(state.url.getOrCrash()));
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const FaIcon(
                FontAwesomeIcons.circleInfo,
                size: 18,
              ),
              const SizedBox(width: 12),
              Flexible(
                child: RichText(
                  text: TextSpan(
                    text: '${S().byContinuingYouAgreeTo} ',
                    style: context.titleSmall.copyWith(
                      color: context.secondaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: S().termsOfService.toLowerCase(),
                        style: context.titleSmall.copyWith(
                          color: context.primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context
                              .read<AppLinksCubit>()
                              .launchTermsOfService(),
                      ),
                      TextSpan(
                        text: ' ${S().and} ',
                        style: context.titleSmall.copyWith(
                          color: context.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: S().onPrivacyPolicy.toLowerCase(),
                        style: context.titleSmall.copyWith(
                          color: context.primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context
                              .read<AppLinksCubit>()
                              .launchPrivacyPolicy(),
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
