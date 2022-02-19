import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/auth/auth_cubit.dart';
import 'package:raver/application/auth/sign_in_form/sign_in_form_cubit.dart';
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
                (authOrFailure) =>
            {
              authOrFailure.fold(
                      (failure) =>
                  {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: failure.map(
                            cancelledByUser: ((_) =>
                            const Text('Cancelled')),
                            emailAlreadyInUse: ((_) =>
                            const Text('Email already in use')),
                            invalidEmail: ((_) =>
                            const Text('Invalid email format')),
                            invalidEmailAndPasswordCombination: ((_) =>
                            const Text(
                                'Invalid email and password combination')),
                            serverError: ((_) =>
                            const Text('Server error')),
                          ),
                        ),
                      ),
                  }, (success) {
                AutoRouter.of(context).replace(const NavigatorRouter());
                context.read<AuthCubit>().requestAuthCheck();
              })
            });
      },
      builder: (ctx, state) =>
          Form(
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
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    autocorrect: false,
                    onChanged: (value) =>
                        ctx.read<SignInFormCubit>().onEmailChanged(value),
                    validator: (value) {
                      return value != null && value.isNotEmpty && isEmail(value)
                          ? null
                          : 'Enter valid email address';
                    }),
                TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    autocorrect: false,
                    obscureText: true,
                    onChanged: (value) =>
                        ctx.read<SignInFormCubit>().onPasswordChanged(value),
                    validator: (value) =>
                    value != null && value.length > 6
                        ? null
                        : 'Password should be at least 6 characters'),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ctx.read<SignInFormCubit>()
                                .signInWithEmailAndPassword();
                          }
                        },
                        child: const Text('SIGN IN'),
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
                        child: const Text('REGISTER'),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    ctx.read<SignInFormCubit>().signInWithGoogle();
                  },
                  child: const Text(
                    'SIGN IN WITH GOOGLE',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    ctx.read<SignInFormCubit>().signInWithFacebook();
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
