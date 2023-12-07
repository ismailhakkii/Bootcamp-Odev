import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/place_tile.dart';
import 'package:flutter_application_1/services/api.dart';
import 'package:flutter_application_1/models/place.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService apiService = ApiService();
  List<Place> places = [];

  @override
  void initState() {
    super.initState();
    _loadNearbyPlaces();
  }

  void _loadNearbyPlaces() async {
    double lat = 0.0; //  enlemi
    double lng = 0.0; // boylamı

    try {
      final response = await apiService.getNearbyPlaces(lat, lng);
      setState(() {
        places = response.map<Place>((json) => Place.fromJson(json)).toList();
      });
    } catch (e) {
      print(e); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: places.isNotEmpty
          ? GridView.count(
              crossAxisCount: 2, 
              children: places.map((place) {
                return Center(
                  child: PlaceTile(place: place),
                );
              }).toList(),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
