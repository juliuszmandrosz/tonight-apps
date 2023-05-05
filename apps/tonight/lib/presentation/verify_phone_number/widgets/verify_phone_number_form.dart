import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/verify_phone_number/verify_phone_number_cubit.dart';
import 'package:tonight/presentation/commons/widgets/phone_number_field.dart';
import 'package:translations/translations.dart';

class VerifyPhoneNumberForm extends StatelessWidget {
  const VerifyPhoneNumberForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneFormKey = GlobalKey<FormState>();
    return BlocBuilder<VerifyPhoneNumberCubit, VerifyPhoneNumberState>(
      builder: (context, state) {
        return Column(
          children: [
            const Spacer(),
            PhoneNumberField(
              formKey: phoneFormKey,
              onInputChanged: (value) => context
                  .read<VerifyPhoneNumberCubit>()
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
                              .read<VerifyPhoneNumberCubit>()
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
