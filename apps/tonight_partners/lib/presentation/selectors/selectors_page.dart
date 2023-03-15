import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/selector_list/selector_list_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/core/dots_loading_indicator.dart';
import 'package:tonight_partners/presentation/routes/app_router.dart';
import 'package:tonight_partners/presentation/selectors/widgets/selector_list_tile.dart';
import 'package:translations/translations.dart';

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
              previous.errorMessage != current.errorMessage ||
              previous.initialStatus != current.initialStatus,
          listener: (context, state) {
            if (state.initialStatus.isFailure()) {
              context.pushRoute(
                FailureRoute(
                  retryCallback: () =>
                      context.read<SelectorListCubit>().getSelectors(),
                ),
              );
            }

            state.errorMessage.fold(
              () {},
              (error) => context.showSnackbarMessage(error),
            );
          },
          builder: (context, state) {
            if (state.initialStatus.isInitial() ||
                state.initialStatus.isFailure()) {
              return Container();
            }

            if (state.initialStatus.isLoading()) {
              return const DotsLoadingIndicator();
            }

            return state.selectors.isEmpty
                ? Center(
                    child: Text(
                      S().selectors(0),
                      style: context.titleMedium,
                    ),
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
