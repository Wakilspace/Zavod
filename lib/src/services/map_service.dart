import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapService {
  // Simulate 7 static markers for demo
  List<LatLng> getDemoPoints() {
    return [
      LatLng(6.531089, 3.386926),
      LatLng(6.506040, 3.384835),
      LatLng(6.526234, 3.369324),
      LatLng(6.527332, 3.383113),
      LatLng(6.541846, 3.397056),
      LatLng(6.539037, 3.373240),
      LatLng(6.525464, 3.365439),
    ];
  }

  // Optional: Simulate opening navigation
  String getNavigationUrl(LatLng destination) {
    return 'https://www.google.com/maps/dir/?api=1&destination=${destination.latitude},${destination.longitude}&travelmode=driving';
  }
}
