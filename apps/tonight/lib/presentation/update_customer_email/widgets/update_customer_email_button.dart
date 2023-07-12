import 'package:common/presentation/circle_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/customer_email/customer_email_cubit.dart';

class UpdateCustomerEmailButton extends StatelessWidget {
  const UpdateCustomerEmailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerEmailCubit, CustomerEmailState>(
      builder: (context, state) {
        return FloatingActionButton(
          onPressed: state.status.isSubmissionInProgress
              ? null
              : context.read<CustomerEmailCubit>().updateEmail,
          child: state.status.isSubmissionInProgress
              ? const CircleLoadingIndicator(size: 24)
              : const Icon(Icons.save),
        );
      },
    );
  }
}
