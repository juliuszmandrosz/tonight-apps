import 'package:common/common.dart';
import 'package:flutter/material.dart';

class InfiniteGrid extends StatefulWidget {
  final int itemCount;
  final VoidCallback onFetchData;
  final bool hasReachedMax;
  final bool hasError;
  final bool isLoading;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final bool shrinkWrap;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double childAspectRatio;
  final int crossAxisCount;
  final ScrollController? scrollController;

  const InfiniteGrid({
    required this.itemCount,
    required this.hasReachedMax,
    required this.hasError,
    required this.isLoading,
    required this.onFetchData,
    required this.itemBuilder,
    this.shrinkWrap = false,
    this.crossAxisSpacing = 5,
    this.mainAxisSpacing = 5,
    this.childAspectRatio = 1,
    this.crossAxisCount = 3,
    this.scrollController,
    Key? key,
  }) : super(key: key);

  @override
  State<InfiniteGrid> createState() => _InfiniteGridState();
}

class _InfiniteGridState extends State<InfiniteGrid> {
  @override
  void initState() {
    super.initState();
    if (widget.scrollController != null) {
      widget.scrollController!.addListener(_onScrollControllerScroll);
    }
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _onScrollNotification,
      child: CustomScrollView(
        shrinkWrap: widget.shrinkWrap,
        physics:
            widget.shrinkWrap ? const NeverScrollableScrollPhysics() : null,
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: widget.crossAxisSpacing,
              mainAxisSpacing: widget.mainAxisSpacing,
              childAspectRatio: widget.childAspectRatio,
              crossAxisCount: widget.crossAxisCount,
            ),
            delegate: SliverChildBuilderDelegate(
              widget.itemBuilder,
              childCount: widget.itemCount,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              _buildBottom,
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottom(BuildContext context, int index) {
    if (widget.isLoading) return const BottomLoader();
    if (widget.hasError) {
      return NextPageError(retryCallback: widget.onFetchData);
    }
    return const SizedBox.shrink();
  }

  bool _onScrollNotification(ScrollNotification notification) {
    if (widget.isLoading) return false;
    if (_isBottomScrollNotification(notification) && !widget.hasError) {
      widget.onFetchData();
    }
    return false;
  }

  bool _isBottomScrollNotification(ScrollNotification notification) {
    if (!notification.metrics.atEdge) return false;
    return notification.metrics.pixels != 0;
  }

  void _onScrollControllerScroll() {
    if (_isScrollControllerBottom(widget.scrollController!)) {
      widget.onFetchData();
    }
  }

  bool _isScrollControllerBottom(ScrollController scrollController) {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll * 0.95);
  }
}
