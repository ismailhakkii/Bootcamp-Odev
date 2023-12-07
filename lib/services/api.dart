import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiKey = 'AIzaSyAJySX0LR5_iVYkZXjVsITlKsY2pVJbH-8';

  Future<List<dynamic>> getNearbyPlaces(double lat, double lng) async {
    final String baseUrl = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json';
    final response = await http.get(Uri.parse(
        '$baseUrl?location=$lat,$lng&radius=1500&type=restaurant&key=$apiKey'));

    if (response.statusCode == 200) {
      return json.decode(response.body)['results'];
    } else {
      throw Exception('Failed to load nearby places');
    }
  }

Future<List<dynamic>> searchPlaces(String query, double lat, double lng) async {
    final String baseUrl = 'https://maps.googleapis.com/maps/api/place/textsearch/json';
    final response = await http.get(Uri.parse(
        '$baseUrl?query=$query&location=$lat,$lng&radius=1500&key=$apiKey'));

    if (response.statusCode == 200) {
      return json.decode(response.body)['results'];
    } else {
      throw Exception('Failed to search places');
    }
  }}
