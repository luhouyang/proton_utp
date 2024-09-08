import 'dart:async';
// import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:location/location.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:proton_utp/services/location/location_service.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final StreamController<void> _rebuildStream = StreamController.broadcast();
  FlutterMap? map;

  Future<void> loadData() async {
    _getMap();
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  void dispose() {
    _rebuildStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Navigation",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, color: Colors.green),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: map ??
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: LoadingAnimationWidget.hexagonDots(color: Colors.green, size: 75),
                            ),
                          ],
                        ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.green[900],
                foregroundColor: Colors.white,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () async {
                await loadData();
              },
              child: const Text(
                "Reload",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  _getMap() async {
    // get geo location
    LocationData location = await LocationService().getLiveLocation();
    if (!mounted) return;
    setState(() {
      // create hybrid map
      map = FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(location.latitude!, location.longitude!),
          initialZoom: 18.0,
        ),
        children: [
          TileLayer(
            retinaMode: true, 
            tileProvider: CancellableNetworkTileProvider(
              headers: {'User-Agent': 'com.example.proton_utp/1.1.3'}),
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            // userAgentPackageName: "com.planthealthdtc.plant_health_data/flutter_map/7.0.2",
          ),
          // live location, orientation tracker
          LocationService().currerntLocationandOrientation(),
          MarkerLayer(markers: [
          Marker(point: LatLng(location.latitude ?? 0.0, location.longitude ?? 0.0), child: const Text('Car Location'))
        ])
        ], 
      );
    });
  }
}