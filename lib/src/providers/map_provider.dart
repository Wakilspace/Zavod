import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../services/map_service.dart';


final mapServiceProvider = Provider<MapService>((ref) => MapService());

// Holds list of points for the map
final mapPointsProvider = Provider<List<LatLng>>((ref) {
  final mapService = ref.read(mapServiceProvider);
  return mapService.getDemoPoints();
});

// Exposes a URL to open Google Maps navigation
final navigationUrlProvider = Provider.family<String, LatLng>((ref, destination) {
  final mapService = ref.read(mapServiceProvider);
  return mapService.getNavigationUrl(destination);
});
