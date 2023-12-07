import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}
// google maps işlemlerimiz 
class _MapWidgetState extends State<MapWidget> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(0.0, 0.0); 

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 11.0, 
      ),
     
    );
  }
}
