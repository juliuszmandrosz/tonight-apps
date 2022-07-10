import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
  late final String _mapStyle;
  var _isMapLoading = true;

  @override
  void initState() {
    rootBundle.loadString('assets/map_styles/aubergine_map_style.txt').then((
      string,
    ) {
      _mapStyle = string;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final lat = widget.event.getLatitude();
    final lng = widget.event.getLongitude();
    const mapHeight = 300.0;
    const mapWidth = 400.0;
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
          height: mapHeight,
          width: mapWidth,
          child: Stack(
            children: [
              GoogleMap(
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
                onMapCreated: (controller) {
                  controller.setMapStyle(_mapStyle);
                  setState(() {
                    _isMapLoading = false;
                  });
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
              if (_isMapLoading)
                SizedBox(
                  height: mapHeight,
                  width: mapWidth,
                  child: SpinKitThreeBounce(
                    color: context.onSurfaceColor,
                    size: 24,
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
