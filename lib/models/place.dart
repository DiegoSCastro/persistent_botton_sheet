import 'package:flutter/material.dart';

class Place {
  final String label;
  final IconData icon;
  final double distance;

  Place({
    required this.label,
    required this.icon,
    required this.distance,
  });
}

List<Place> placesNearbyList = [
  Place(
    label: 'Airway supermarket',
    distance: 1.2,
    icon: Icons.shopping_cart,
  ),
  Place(
    label: 'Soccer team special stadium',
    distance: 1.2,
    icon: Icons.fiber_manual_record,
  ),
  Place(
    label: 'East Side Mall',
    distance: 1.2,
    icon: Icons.work,
  ),
  Place(
    label: 'Domino\'s pizza',
    distance: 1.2,
    icon: Icons.restaurant_menu,
  ),
  Place(
    label: 'East Side Mall',
    distance: 1.2,
    icon: Icons.work,
  ),
  Place(
    label: 'Center Square Market',
    distance: 1.2,
    icon: Icons.shopping_cart,
  ),
  Place(
    label: 'High School of bring students',
    distance: 1.2,
    icon: Icons.school,
  ),
  Place(
    label: 'East Side Mall',
    distance: 1.2,
    icon: Icons.work,
  ),
  Place(
    label: 'Domino\'s pizza',
    distance: 1.2,
    icon: Icons.restaurant_menu,
  ),
  Place(
    label: 'East Side Mall',
    distance: 1.2,
    icon: Icons.work,
  ),
];
