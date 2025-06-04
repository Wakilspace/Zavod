import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../providers/map_provider.dart';

class MapScreen extends ConsumerWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final points = ref.watch(mapPointsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Map')),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(6.5244, 3.3792), // Lagos center
          zoom: 13.0,
        ),
        myLocationEnabled: true,
        markers: points.asMap().entries.map((entry) {
          final index = entry.key;
          final point = entry.value;

          return Marker(
            markerId: MarkerId('marker$index'),
            position: point,
            infoWindow: InfoWindow(
              title: 'Point $index',
              snippet: 'Tap to Navigate',
              onTap: () async {
                // Capture context-dependent logic before await
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final url = Uri.parse(ref.read(navigationUrlProvider(point)));

                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  scaffoldMessenger.showSnackBar(
                    const SnackBar(content: Text('Could not open Maps')),
                  );
                }
              },
            ),
          );
        }).toSet(),
      ),
    );
  }
}
