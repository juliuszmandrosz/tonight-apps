import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/auth/username/username_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/update_username/widgets/submit_username_button.dart';
import 'package:tonight/presentation/update_username/widgets/update_username_input.dart';
import 'package:translations/translations.dart';

class UpdateUsernamePage extends StatelessWidget {
  final String currentUsername;

  const UpdateUsernamePage({
    required this.currentUsername,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => getIt<UsernameCubit>()..usernameChanged(currentUsername),
      child: SafeArea(
        child: Scaffold(
          appBar: TonightAppBar(title: S().changeUsername),
          body: BlocListener<UsernameCubit, UsernameState>(
            listener: (context, state) {
              state.errorMessage.fold(
                () {},
                (error) {
                  context.showSnackbarMessage(error);
                },
              );

              if (state.status.isSubmissionSuccess) {
                context.showSnackbarMessage(S().usernameUpdatedMessage);
                context.popRoute();
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UpdateUsernameInput(currentUsername: currentUsername),
                  const SubmitUsernameButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
