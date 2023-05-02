import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/invite_selector/invite_selector_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_app_bar.dart';
import 'package:tonight_partners/presentation/invite_selector/widgets/generate_access_code_button.dart';
import 'package:tonight_partners/presentation/invite_selector/widgets/generated_code.dart';
import 'package:translations/raver_translations.dart';

class InviteSelectorPage extends StatelessWidget {
  const InviteSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightPartnersAppBar(title: S().inviteSelector),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 40,
        ),
        child: BlocProvider(
          create: (context) => getIt<InviteSelectorCubit>(),
          child: BlocListener<InviteSelectorCubit, InviteSelectorState>(
            listenWhen: (previous, current) =>
                previous.errorMessage != current.errorMessage ||
                previous.status != current.status,
            listener: (context, state) {
              state.errorMessage.fold(
                () {},
                (error) => context.showSnackbarMessage(error),
              );
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  GeneratedCode(),
                  SizedBox(height: 30),
                  GenerateAccessCodeButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
