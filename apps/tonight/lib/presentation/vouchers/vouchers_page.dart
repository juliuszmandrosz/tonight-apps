import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/vouchers/bloc/vouchers_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/vouchers/widgets/no_vouchers_info.dart';
import 'package:tonight/presentation/vouchers/widgets/voucher_card.dart';

class VouchersPage extends StatelessWidget {
  const VouchersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<VouchersBloc>()..add(const VouchersEvent.vouchersFetched()),
      child: BlocBuilder<VouchersBloc, VouchersState>(
        builder: (context, state) {
          switch (state.fetchVouchersStatus) {
            case CubitStatus.initial:
              return const SizedBox.shrink();
            case CubitStatus.loading:
              return const WaveLoadingIndicator();
            case CubitStatus.failure:
              return FailureInfo(
                retryCallback: () => context
                    .read<VouchersBloc>()
                    .add(const VouchersEvent.vouchersFetched()),
              );
            case CubitStatus.success:
              return state.vouchers.isEmpty
                  ? const NoVouchersInfo()
                  : RefreshIndicator(
                      onRefresh: () async => context
                          .read<VouchersBloc>()
                          .add(const VouchersEvent.vouchersFetched()),
                      child: InfiniteList(
                        itemCount: state.vouchers.length,
                        hasReachedMax: state.hasReachedMax,
                        isLoading: state.nextPageStatus.isLoading(),
                        hasError: state.nextPageStatus.isFailure(),
                        onFetchData: () => context
                            .read<VouchersBloc>()
                            .add(const VouchersEvent.nextPageVouchersFetched()),
                        separatorBuilder: (_, __) => const SizedBox(height: 16),
                        itemBuilder: (_, i) =>
                            VoucherCard(voucher: state.vouchers[i]),
                      ),
                    );
          }
        },
      ),
    );
  }
}
