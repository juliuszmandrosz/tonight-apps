import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/verify_phone_number/verify_phone_number_cubit.dart';
import 'package:tonight/presentation/commons/widgets/phone_number_field.dart';
import 'package:tonight/presentation/core/terms_of_service_info.dart';
import 'package:translations/translations.dart';

class VerifyPhoneNumberForm extends StatelessWidget {
  final GlobalKey<FormState> phoneFormKey;
  final bool isUserAnonymous;

  const VerifyPhoneNumberForm({
    required this.phoneFormKey,
    required this.isUserAnonymous,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyPhoneNumberCubit, VerifyPhoneNumberState>(
      builder: (context, state) {
        return Column(
          children: [
            const Spacer(),
            PhoneNumberField(
              enabled: !state.sendSmsStatus.isLoading(),
              formKey: phoneFormKey,
              onInputChanged: (value) => context
                  .read<VerifyPhoneNumberCubit>()
                  .changePhoneNumber(value ?? ''),
            ),
            if (isUserAnonymous) const SizedBox(height: 30),
            if (isUserAnonymous) const TermsOfServiceInfo(),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: kButtonHeight,
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
