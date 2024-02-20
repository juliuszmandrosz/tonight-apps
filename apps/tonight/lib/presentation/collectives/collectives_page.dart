import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/collectives/collectives_cubit.dart';
import 'package:tonight/application/discover/discover_cubit.dart';
import 'package:tonight/presentation/collectives/widgets/collective_card.dart';

class CollectivesPage extends HookWidget {
  const CollectivesPage({super.key});

  static const heroPhrase = 'collectivesPageHero';

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final phraseFilter = context.read<DiscoverCubit>().state.phraseFilter;
      context.read<CollectivesCubit>().searchCollectives(phraseFilter.phrase);
      return null;
    }, const []);

    return BlocBuilder<CollectivesCubit, CollectivesState>(
      builder: (context, state) {
        switch (state.getCollectivesStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();

          case CubitStatus.loading:
            return const WaveLoadingIndicator();

          case CubitStatus.failure:
            return FailureInfo(
              retryCallback:
                  context.read<CollectivesCubit>().refreshCollectives,
              isSocketException: false,
            );

          case CubitStatus.success:
            return state.collectives.isEmpty
                ? NoResults(
                    // TODO - add translation
                    onRefresh:
                        context.read<CollectivesCubit>().refreshCollectives,
                    message: 'No collectives found',
                  )
                : RefreshIndicator(
                    onRefresh: () async =>
                        context.read<CollectivesCubit>().refreshCollectives(),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.collectives.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (_, i) => CollectiveCard(
                        collective: state.collectives[i],
                        heroPhrase: heroPhrase,
                      ),
                    ),
                  );
        }
      },
    );
  }
}
