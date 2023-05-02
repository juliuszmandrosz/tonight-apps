import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_details/club_photos/club_photos_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/photos/club_photo.dart';
import 'package:translations/raver_translations.dart';

class ClubPhotos extends StatefulWidget {
  const ClubPhotos({
    Key? key,
    required this.clubId,
  }) : super(key: key);

  final String clubId;

  @override
  State<ClubPhotos> createState() => _ClubPhotosState();
}

class _ClubPhotosState extends State<ClubPhotos> {
  final _scrollController = ScrollController();
  final _clubPhotoBloc = getIt<ClubPhotosBloc>();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          _clubPhotoBloc..add(ClubPhotosEvent.photosFetched(widget.clubId)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: BlocConsumer<ClubPhotosBloc, ClubPhotosState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status.isFailure()) {
              // TODO - handle this
            }
          },
          builder: (context, state) {
            switch (state.status) {
              case CubitStatus.initial:
                return Container();

              case CubitStatus.failure:
                return Container();

              case CubitStatus.loading:
                return const Center(child: CircularProgressIndicator());

              case CubitStatus.success:
                if (state.photosUrls.isEmpty) {
                  return Center(child: Text(S().photos(0)));
                }

                return CustomScrollView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _scrollController,
                  slivers: [
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) =>
                            ClubPhoto(url: state.photosUrls[index]),
                        childCount: state.photosUrls.length,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: 2,
                        crossAxisCount: 2,
                      ),
                    ),
                    if (state.nextPageToken != null)
                      const SliverToBoxAdapter(
                        child: BottomLoader(),
                      )
                  ],
                );
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      final nextPageToken = _clubPhotoBloc.state.nextPageToken;
      _clubPhotoBloc.add(ClubPhotosEvent.nextPagePhotosFetched(
          clubId: widget.clubId, nextPageToken: nextPageToken));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.95);
  }
}
