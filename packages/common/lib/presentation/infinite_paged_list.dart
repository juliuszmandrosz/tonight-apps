import 'package:common/common.dart';
import 'package:flutter/material.dart';

class InfinitePagedList extends StatefulWidget {
  final int itemCount;
  final VoidCallback onFetchData;
  final bool hasReachedMax;
  final bool hasError;
  final bool isLoading;
  final Widget Function(BuildContext context, int index) itemBuilder;

  const InfinitePagedList({
    required this.itemCount,
    required this.onFetchData,
    required this.hasReachedMax,
    required this.isLoading,
    required this.hasError,
    required this.itemBuilder,
    Key? key,
  }) : super(key: key);

  @override
  State<InfinitePagedList> createState() => _InfinitePagedListState();
}

class _InfinitePagedListState extends State<InfinitePagedList> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _onScroll,
      child: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: PageController(keepPage: true),
        scrollDirection: Axis.vertical,
        itemCount:
            widget.hasReachedMax ? widget.itemCount : widget.itemCount + 1,
        itemBuilder: _buildItem,
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    if (index >= widget.itemCount) {
      return widget.hasError
          ? NextPageError(retryCallback: widget.onFetchData)
          : const WaveLoadingIndicator();
    }

    return Padding(
      padding: _getPadding(index),
      child: widget.itemBuilder(context, index),
    );
  }

  bool _onScroll(ScrollNotification notification) {
    if (widget.isLoading) return false;
    if (_currentIndex == widget.itemCount - 2 && !widget.hasError) {
      widget.onFetchData();
    }
    return false;
  }

  EdgeInsetsGeometry _getPadding(int index) {
    if (index == 0) return const EdgeInsets.only(top: 8);
    if (index == widget.itemCount - 1) return const EdgeInsets.only(bottom: 8);
    return EdgeInsets.zero;
  }
}
