import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_client/openmic_client.dart';

class VenueDetailComponent extends ConsumerWidget {
  final Venue venue;
  const VenueDetailComponent({super.key, required this.venue});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://picsum.photos/600/400",
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 6,
              children: [
                if (venue.bio.isNotEmpty)
                  Text(venue.bio,
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.bodyMedium),
                if (venue.websiteUrl.isNotEmpty)
                  GestureDetector(
                    onTap: () => {},
                    child: Text(
                      venue.websiteUrl,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(decoration: TextDecoration.underline),
                    ),
                  ),
                if (venue.instagramUrl.isNotEmpty)
                  GestureDetector(
                    onTap: () => {},
                    child: Text(
                      venue.instagramUrl,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(decoration: TextDecoration.underline),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
