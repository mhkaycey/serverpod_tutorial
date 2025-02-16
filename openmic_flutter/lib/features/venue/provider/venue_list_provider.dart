import 'package:openmic_client/openmic_client.dart';
import 'package:openmic_flutter/features/venue/provider/venue_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'venue_list_provider.g.dart';

@Riverpod(keepAlive: true)
class VenueList extends _$VenueList {
  final PagingController<int, Venue> pagingController =
      PagingController(firstPageKey: 1);

  @override
  PagingStatus build() {
    pagingController.addPageRequestListener((page) {
      fetchPage(page);
    });

    pagingController.addStatusListener((status) {
      state = status;
    });
    return PagingStatus.loadingFirstPage;
  }

  void fetchPage(int page, {int limit = 10}) async {
    final result =
        await ref.read(venueServiceProvider).list(page: page, limit: limit);

    result.fold((error) {}, (data) {
      if (data.canLoadMore) {
        pagingController.appendPage(data.results, page + 1);
      } else {
        pagingController.appendLastPage(data.results);
      }
    });
  }

  void refresh() async {
    pagingController.refresh();
  }
}
