import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/username/username_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/update_username/widgets/submit_username_button.dart';
import 'package:raver/presentation/update_username/widgets/username_input.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
          appBar: const RaverAppBar(
            // TODO - add translation
            title: 'Zmień nazwę użytkownika',
          ),
          body: BlocListener<UsernameCubit, UsernameState>(
            listener: (context, state) {
              state.errorMessage.fold(
                () {},
                (error) {
                  context.showSnackbarMessage(
                      authErrorMessages[error] ?? S().serverError);
                },
              );
              if (state.status.isSubmissionSuccess) {
                context.showSnackbarMessage(S().usernameUpdatedMessage);
                AutoRouter.of(context).pop();
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UsernameInput(currentUsername: currentUsername),
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
