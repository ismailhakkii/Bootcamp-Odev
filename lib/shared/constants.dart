import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF00A8E8);
  static const accentColor = Color(0xFFEF6C00);
  static const backgroundColor = Color.fromARGB(255, 16, 0, 0);
}

class AppTextStyles {
  static const title = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );
  static const body = TextStyle(
    fontSize: 14.0,
  );
}

class ApiConstants {
  static const baseUrl = 'https://maps.googleapis.com/maps/api/place';
  static const apiKey = 'AIzaSyAJySX0LR5_iVYkZXjVsITlKsY2pVJbH-8';
}
