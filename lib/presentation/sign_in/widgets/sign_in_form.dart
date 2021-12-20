import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/auth/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (ctx, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => {
                  either.fold(
                    (l) => {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text(
                              state.failureMessage
                                  .getOrElse(() => 'Authentication failure'),
                            ),
                          ),
                        ),
                    },
                    (r) => null,
                  )
                });
      },
      builder: (ctx, state) => Form(
        autovalidateMode: state.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
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
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
              onChanged: (value) => ctx
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.emailChanged(value)),
              validator: (_) =>
                  ctx.read<SignInFormBloc>().state.emailAddress.value.fold(
                        (l) => l.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              autocorrect: false,
              obscureText: true,
              onChanged: (value) => ctx
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
              validator: (_) =>
                  ctx.read<SignInFormBloc>().state.password.value.fold(
                        (l) => l.maybeMap(
                          shortPassword: (_) => 'Password is too short',
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ctx.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('SIGN IN'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ctx.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .registerWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('REGISTER'),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                ctx.read<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithGooglePressed(),
                    );
              },
              child: const Text(
                'SIGN IN WITH GOOGLE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ctx.read<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithFacebookPressed(),
                    );
              },
              child: const Text(
                'SIGN IN WITH FACEBOOK',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
