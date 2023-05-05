import 'package:common/extensions/cubit_status_extensions.dart';
import 'package:common/presentation/circle_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/sign_in_with_phone_number/sign_in_with_phone_number_cubit.dart';
import 'package:tonight/presentation/commons/widgets/phone_number_field.dart';
import 'package:translations/translations.dart';

class SignInWithPhoneNumberForm extends StatelessWidget {
  const SignInWithPhoneNumberForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneFormKey = GlobalKey<FormState>();
    return BlocBuilder<SignInWithPhoneNumberCubit, SignInWithPhoneNumberState>(
      builder: (context, state) {
        return Column(
          children: [
            const Spacer(),
            PhoneNumberField(
              formKey: phoneFormKey,
              onInputChanged: (value) => context
                  .read<SignInWithPhoneNumberCubit>()
                  .changePhoneNumber(value ?? ''),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: state.sendSmsStatus.isLoading()
                  ? const CircleLoadingIndicator()
                  : ElevatedButton(
                      child: Text(S().next),
                      onPressed: () {
                        if (phoneFormKey.currentState != null &&
                            phoneFormKey.currentState!.validate()) {
                          context
                              .read<SignInWithPhoneNumberCubit>()
                              .sendSmsVerificationCode();
                        }
                      },
                    ),
            ),
          ],
        );
      },
    );
  }
}
