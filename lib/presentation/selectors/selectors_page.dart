import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/selector_list/selector_list_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/dots_loading_indicator.dart';
import 'package:raver_partners/presentation/selectors/widgets/selector_list_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class SelectorsPage extends StatelessWidget {
  const SelectorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SelectorListCubit>()..getSelectors(),
      child: Padding(
        padding: const EdgeInsets.all(15),
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
              return const DotsLoadingIndicator();
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
                : Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, i) => const Divider(),
                          itemCount: state.selectors.length + 1,
                          itemBuilder: (ctx, i) => i >= state.selectors.length
                              ? const SizedBox()
                              : SelectorListTile(
                                  selector: state.selectors[i],
                                ),
                        ),
                      ),
                      const SizedBox(height: 60),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
