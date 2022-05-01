import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/selector_list/selector_list_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/selectors/widgets/selector_list_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class SelectorsPage extends StatelessWidget {
  const SelectorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SelectorListCubit>()..getSelectors(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: BlocConsumer<SelectorListCubit, SelectorListState>(
          listenWhen: (previous, current) =>
              previous.errorMessage != current.errorMessage,
          listener: (context, state) {
            state.errorMessage.fold(
              () {},
              (error) => context.showSnackbarMessage(error),
            );
          },
          builder: (context, state) {
            if (state.initialStatus.isLoading()) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state.initialStatus.isFailure()) {
              return Center(
                child: Text(S().errorLoadingSelectors),
              );
            }

            return state.selectors.isEmpty
                ? Center(
                    child: Text(S().selectors(0)),
                  )
                : ListView.builder(
                    itemCount: state.selectors.length,
                    itemBuilder: (ctx, i) => SelectorListTile(
                      selector: state.selectors[i],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
