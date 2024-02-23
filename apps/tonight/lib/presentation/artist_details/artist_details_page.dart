import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/artist_details/artist_details_cubit.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/artist_details/widgets/artist_description.dart';
import 'package:tonight/presentation/artist_details/widgets/artist_details_tabs.dart';
import 'package:tonight/presentation/core/details_hero_image.dart';

class ArtistDetailsPage extends StatefulWidget {
  final Artist artist;
  final String heroTag;

  const ArtistDetailsPage({
    super.key,
    required this.artist,
    required this.heroTag,
  });

  @override
  State<ArtistDetailsPage> createState() => _ArtistDetailsPageState();
}

class _ArtistDetailsPageState extends State<ArtistDetailsPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ArtistDetailsCubit>(),
        ),
      ],
      child: Scaffold(
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
                          imageUrl: widget.artist.artistPhotoUrl,
                          heroTag: widget.heroTag,
                          height: 250,
                        ),
                        const SizedBox(height: 12),
                        ArtistDescription(artist: widget.artist),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: ArtistDetailsTabs(
              artist: widget.artist,
              tabController: _tabController,
            ),
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
