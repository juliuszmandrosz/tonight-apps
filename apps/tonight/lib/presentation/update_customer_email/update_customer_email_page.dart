import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:payments/domain/entities/customer_data_entity.dart';
import 'package:tonight/application/customer_email/customer_email_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/update_customer_email/widgets/update_customer_email_button.dart';
import 'package:translations/translations.dart';

class UpdateCustomerEmailPage extends StatelessWidget {
  final CustomerData customerData;

  const UpdateCustomerEmailPage({
    required this.customerData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CustomerEmailCubit>()..initState(customerData),
      child: BlocListener<CustomerEmailCubit, CustomerEmailState>(
        listener: (context, state) {
          if (state.status.isSubmissionSuccess) {
            context.popRoute<CustomerData>(state.customerData.getOrCrash());
            // TODO - add translation
            context.showSnackbarMessage('Pomyślnie zaktualizowano email');
          }
        },
        child: Scaffold(
          // TODO - add translation
          appBar: AppBar(title: Text('Podaj adres email')),
          floatingActionButton: const UpdateCustomerEmailButton(),
          body: BlocBuilder<CustomerEmailCubit, CustomerEmailState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: TonightTextInput(
                  value: state.email.value,
                  onChanged: context.read<CustomerEmailCubit>().emailChanged,
                  status: state.status,
                  keyboardType: TextInputType.emailAddress,
                  errorText: state.email.error?.message,
                  label: S().email,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
