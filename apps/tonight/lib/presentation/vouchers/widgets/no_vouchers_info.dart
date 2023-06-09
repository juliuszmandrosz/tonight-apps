import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/vouchers/bloc/vouchers_bloc.dart';
import 'package:translations/translations.dart';

class NoVouchersInfo extends StatelessWidget {
  const NoVouchersInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S().vouchers(0),
            style: context.titleSmall,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => context
                .read<VouchersBloc>()
                .add(const VouchersEvent.vouchersFetched()),
            child: Text(S().refresh),
          ),
        ],
      ),
    );
  }
}
