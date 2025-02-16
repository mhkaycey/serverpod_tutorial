import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class InfiniteListComponent<T> extends StatelessWidget {
  final PagingController<int, T> pagingController;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final Function() handleRefresh;
  final String? noItemsFoundMessage;

  const InfiniteListComponent({
    super.key,
    required this.pagingController,
    required this.itemBuilder,
    required this.handleRefresh,
    this.noItemsFoundMessage,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => handleRefresh(),
      child: PagedListView(
        pagingController: pagingController,
        builderDelegate: PagedChildBuilderDelegate<T>(
          itemBuilder: itemBuilder,
          noItemsFoundIndicatorBuilder: (context) => Center(
            child: Text(noItemsFoundMessage ?? 'No items found.'),
          ),
        ),
      ),
    );
  }
}
