import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/features/location/provider/user_location_provider.dart';
import 'package:openmic_flutter/features/venue/provider/venue_map_provider.dart';
import 'package:latlong2/latlong.dart';
import 'package:openmic_flutter/features/venue/screen/venue_detail_screen.dart';

class VenueMapComponent extends ConsumerWidget {
  const VenueMapComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(venueMapProvider.notifier);
    final state = ref.watch(venueMapProvider);
    final userLocation = ref.watch(userLocationProvider);

    return FlutterMap(
      mapController: provider.mapController,
      options: MapOptions(
        initialCenter: userLocation.latLng ?? LatLng(6.4824, 7.5013),
        initialZoom: 12,
        minZoom: 13,
        maxZoom: 30,
        onMapReady: provider.handleMapReady,
        onMapEvent: provider.handleMapEvent,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'openmic_flutter',
        ),
        MarkerLayer(
          markers: state.map((venue) {
            return Marker(
              point: LatLng(venue.latitude, venue.longitude),
              child: GestureDetector(
                onTap: () {
                  context.push(VenueDetailScreen.route(venue.id));
                },
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Center(child: Icon(Icons.mic, color: Colors.white)),
                ),
              ),
            );
          }).toList(),
        ),
        if (userLocation.latLng != null)
          MarkerLayer(
            markers: [
              Marker(
                width: 80,
                height: 80,
                point: userLocation.latLng!,
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Center(
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                provider.findMe();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white60,
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black26,
                  //     blurRadius: 8,
                  //     offset: Offset(0, 0),
                  //   ),
                  // ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.location_searching),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
