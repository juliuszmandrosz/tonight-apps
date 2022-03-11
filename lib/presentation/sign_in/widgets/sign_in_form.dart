import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/auth/auth_cubit.dart';
import 'package:raver/application/auth/sign_in_form/sign_in_form_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:validators/validators.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return BlocConsumer<SignInFormCubit, SignInFormState>(
      listener: (ctx, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (authOrFailure) => {
                  authOrFailure.fold(
                      (failure) => {
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                SnackBar(
                                  content: failure.map(
                                    cancelledByUser: ((_) =>
                                        Text(S().cancelled)),
                                    emailAlreadyInUse: ((_) =>
                                        Text(S().emailAlreadyInUse)),
                                    invalidEmail: ((_) =>
                                        Text(S().invalidEmail)),
                                    invalidEmailAndPasswordCombination: ((_) =>
                                        Text(
                                          S().invalidEmailAndPasswordCombination,
                                        )),
                                    serverError: ((_) => Text(S().serverError)),
                                  ),
                                ),
                              ),
                          }, (success) {
                    AutoRouter.of(context).replace(const NavigatorRouter());
                    context.read<AuthCubit>().requestAuthCheck();
                  })
                });
      },
      builder: (ctx, state) => Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                '✨',
                style: TextStyle(fontSize: 80),
                textAlign: TextAlign.center,
              ),
            ),
            TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: S().email,
                ),
                autocorrect: false,
                onChanged: (value) =>
                    ctx.read<SignInFormCubit>().onEmailChanged(value),
                validator: (value) {
                  return value != null && value.isNotEmpty && isEmail(value)
                      ? null
                      : S().enterValidEmail;
                }),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                labelText: S().password,
              ),
              autocorrect: false,
              obscureText: true,
              onChanged: (value) =>
                  ctx.read<SignInFormCubit>().onPasswordChanged(value),
              validator: (value) => value != null && value.length > 6
                  ? null
                  : S().passwordTooShort,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ctx
                            .read<SignInFormCubit>()
                            .signInWithEmailAndPassword();
                      }
                    },
                    child: Text(S().signIn.toUpperCase()),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ctx
                            .read<SignInFormCubit>()
                            .registerWithEmailAndPassword();
                      }
                    },
                    child: Text(S().register.toUpperCase()),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                ctx.read<SignInFormCubit>().signInWithGoogle();
              },
              child: Text(
                S().signInWithGoogle,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
