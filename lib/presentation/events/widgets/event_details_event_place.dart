import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:raver/presentation/core/raver_headline.dart';
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
    return Column(
      children: [
        Row(
          children: [RaverHeadline(text: S().map)],
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 400,
          height: 300,
          child: GoogleMap(
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
              ),
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(
                widget.event.getLatitude(),
                widget.event.getLongitude(),
              ),
              zoom: 16,
            ),
          ),
        )
      ],
    );
  }
}
