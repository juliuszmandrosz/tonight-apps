import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/collective_details/collective_details_bloc.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/collective_details/collective_details_tabs/collective_details_tabs.dart';
import 'package:tonight/presentation/collective_details/widgets/collective_description.dart';
import 'package:tonight/presentation/core/details_hero_image.dart';

class CollectiveDetailsPage extends StatefulWidget {
  final Collective? collective;
  final String? collectiveId;
  final String heroTag;

  const CollectiveDetailsPage({
    super.key,
    this.collective,
    this.collectiveId,
    required this.heroTag,
  }) : assert(
          (collective != null || collectiveId != null),
          'Collective not available',
        );

  @override
  State<CollectiveDetailsPage> createState() => _CollectiveDetailsPageState();
}

class _CollectiveDetailsPageState extends State<CollectiveDetailsPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CollectiveDetailsBloc>()
        ..add(
          CollectiveDetailsEvent.collectiveInitialized(
            collectiveId: widget.collectiveId,
            collective: widget.collective,
          ),
        ),
      child: BlocBuilder<CollectiveDetailsBloc, CollectiveDetailsState>(
        builder: (context, state) {
          if (widget.collective != null) {
            return _createPage(widget.collective!);
          }
          switch (state.getCollectiveStatus) {
            case CubitStatus.initial:
              return const SizedBox.shrink();
            case CubitStatus.loading:
              return const WaveLoadingIndicator();
            case CubitStatus.failure:
              return FailureInfo(
                retryCallback: () => context.read<CollectiveDetailsBloc>().add(
                      CollectiveDetailsEvent.collectiveInitialized(
                        collectiveId: widget.collectiveId,
                        collective: widget.collective,
                      ),
                    ),
              );
            case CubitStatus.success:
              final collective = state.collective.getOrCrash();
              return _createPage(collective);
          }
        },
      ),
    );
  }

  Widget _createPage(Collective collective) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 340,
                floating: true,
                backgroundColor: context.backgroundColor,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Column(
                    children: [
                      DetailsHeroImage(
                        imageUrl: collective.collectivePhotoUrl,
                        heroTag: widget.heroTag,
                        height: 250,
                      ),
                      const SizedBox(height: 12),
                      CollectiveDescription(collective: collective),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: CollectiveDetailsTabs(
            collective: collective,
            tabController: _tabController,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
