import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/features/auth/screens/login_screen.dart';
import 'package:openmic_flutter/features/venue/component/venue_list_component.dart';
import 'package:openmic_flutter/features/venue/screen/venue_edit_screen.dart';

class VenueRootScreen extends StatelessWidget {
  const VenueRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Venue Screen"),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () {
              context.push(LoginScreen.route());
            },
          ),
        ],
      ),

      body: VenueListComponent(),
      // body: Consumer(builder: (context, ref, _) {
      //   return Center(
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.blue,
      //         // onPrimary: Colors.white,
      //       ),
      //       onPressed: () async {
      //         final venue = Venue(
      //           ownerId: 0,
      //           hubId: 1,
      //           name: 'Bar Location Others',
      //           shortAddress: 'Bishop Court',
      //           longAddress: 'Owerri Club',
      //           latitude: 5.488,
      //           longitude: 7.0416,
      //           bio: "This is a bar location",
      //           instagramUrl: "https://www.instagram.com/mhkaycey",
      //           primaryImageUrl: "https://www.barlocation.com/bar.jpg",
      //           websiteUrl: "https://www.google.com.ng",
      //           isVerified: false,
      //         );

      //         final result = await ref.read(venueServiceProvider).save(venue);

      //         result.fold((error) {
      //           log(error.toString());
      //         }, (venue) {
      //           log(venue.toString());
      //           log(venue.id.toString());
      //         });
      //       },
      //       child: const Text(
      //         "Create Venue",
      //         style: TextStyle(fontSize: 20, color: Colors.white),
      //       ),
      //     ),
      //   );
      // }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(VenueEditScreen.route(0));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
