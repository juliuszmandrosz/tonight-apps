import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight_partners/application/sign_in/sign_in_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/routes/app_router.dart';
import 'package:tonight_partners/presentation/sign_in/widgets/access_code_info.dart';
import 'package:tonight_partners/presentation/sign_in/widgets/partners_logo.dart';
import 'package:tonight_partners/presentation/sign_in/widgets/sign_in_access_code_input.dart';
import 'package:tonight_partners/presentation/sign_in/widgets/sign_in_button.dart';
import 'package:tonight_partners/presentation/sign_in/widgets/sign_in_email_input.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInCubit>(),
      child: BlocListener<SignInCubit, SignInState>(
        listener: (context, state) {
          state.errorMessage.fold(
            () {},
            (error) => context.showSnackbarMessage(error),
          );

          state.linkSentMessage.fold(
            () {},
            (message) => context.showSnackbarMessage(message),
          );

          state.status.isSubmissionInProgress
              ? context.loaderOverlay.show()
              : context.loaderOverlay.hide();

          if (state.status.isSubmissionSuccess) {
            context.replaceRoute(const NavigatorRoute());
          }
        },
        child: LoaderOverlay(
          overlayColor: context.shadowColor,
          overlayOpacity: .7,
          child: const Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          PartnersLogo(),
                          SizedBox(height: 10),
                          SignInEmailInput(),
                          SizedBox(height: 20),
                          SignInAccessCodeInput(),
                          SizedBox(height: 20),
                          AccessCodeInfo(),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SignInButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
