import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_client/openmic_client.dart';
import 'package:openmic_flutter/features/venue/screen/venue_detail_screen.dart';

class VenueTiles extends StatelessWidget {
  final Venue venue;
  const VenueTiles({
    super.key,
    required this.venue,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: venue.primaryImageUrl.isNotEmpty
            ? Image.network(
                venue.primaryImageUrl,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              )
            : Icon(Icons.store),
        onTap: () {
          context.push(VenueDetailScreen.route(venue.id));
        },
        title: Text(venue.name),
        subtitle: Text(
          venue.address,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
