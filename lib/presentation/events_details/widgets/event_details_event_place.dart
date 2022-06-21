import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsEventPlace extends StatefulWidget {
  final Event event;

  const EventDetailsEventPlace({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  State<EventDetailsEventPlace> createState() => _EventDetailsEventPlaceState();
}

class _EventDetailsEventPlaceState extends State<EventDetailsEventPlace> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final lat = widget.event.getLatitude();
    final lng = widget.event.getLongitude();
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: RaverHeadline(
            text: S().eventPlace,
            isSmallerVersion: true,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 400,
          height: 300,
          child: GoogleMap(
            onTap: (_) async {
              var result = await MapsLauncher.launchCoordinates(
                lat,
                lng,
                widget.event.clubName,
              );
              if (!result) {
                context.showSnackbarMessage(S().errorOpeningMaps);
              }
            },
            zoomGesturesEnabled: false,
            scrollGesturesEnabled: false,
            tiltGesturesEnabled: false,
            rotateGesturesEnabled: false,
            zoomControlsEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: {
              Marker(
                markerId: const MarkerId('m1'),
                position: LatLng(
                  widget.event.getLatitude(),
                  widget.event.getLongitude(),
                ),
                icon: BitmapDescriptor.defaultMarkerWithHue(245),
                alpha: 0.8,
              ),
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(lat, lng),
              zoom: 16,
            ),
          ),
        )
      ],
    );
  }
}
