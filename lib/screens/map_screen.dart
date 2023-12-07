import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// map_screen.dart



class MapScreen extends StatelessWidget {
  final LatLng initialPosition;

  MapScreen({required this.initialPosition});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: initialPosition,
          zoom: 14.0,
        ),
      ),
    );
  }
}
