import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/place.dart'; 

class PlaceTile extends StatelessWidget {
  final Place place;

  PlaceTile({required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(place.imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        title: Text(place.name),
        subtitle: Text(place.description),
        onTap: () {
                  
        },
      ),
    );
  }
}
