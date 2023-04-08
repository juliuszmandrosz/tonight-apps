import 'package:common/common.dart';
import 'package:flutter/material.dart';

class InfiniteGrid extends StatefulWidget {
  final int itemCount;
  final bool isLoading;
  final bool hasError;
  final bool hasReachedMax;
  final VoidCallback onFetchData;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final ScrollController scrollController;
  final bool shrinkWrap;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double childAspectRatio;
  final int crossAxisCount;

  InfiniteGrid({
    required this.itemCount,
    required this.isLoading,
    required this.hasError,
    required this.hasReachedMax,
    required this.onFetchData,
    required this.itemBuilder,
    ScrollController? scrollController,
    this.shrinkWrap = false,
    this.crossAxisSpacing = 5,
    this.mainAxisSpacing = 5,
    this.childAspectRatio = 1,
    this.crossAxisCount = 3,
    Key? key,
  })  : assert(
            (scrollController != null && shrinkWrap == true) ||
                (scrollController == null && shrinkWrap == false),
            'ShrinkWrap must be true when scrollController is provided'),
        scrollController = scrollController ?? ScrollController(),
        super(key: key);

  @override
  State<InfiniteGrid> createState() => _InfiniteGridState();
}

class _InfiniteGridState extends State<InfiniteGrid> {
  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            widget.itemBuilder,
            childCount: widget.itemCount,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: widget.crossAxisSpacing,
            mainAxisSpacing: widget.mainAxisSpacing,
            childAspectRatio: widget.childAspectRatio,
            crossAxisCount: widget.crossAxisCount,
          ),
        ),
        if (widget.isLoading || widget.hasError)
          SliverToBoxAdapter(
            child: widget.isLoading
                ? const BottomLoader()
                : NextPageError(retryCallback: widget.onFetchData),
          )
      ],
    );
  }

  @override
  void dispose() {
    widget.scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      widget.onFetchData();
    }
  }

  bool get _isBottom {
    if (!widget.scrollController.hasClients) return false;
    final maxScroll = widget.scrollController.position.maxScrollExtent;
    final currentScroll = widget.scrollController.offset;
    return currentScroll >= (maxScroll * 0.95);
  }
}
