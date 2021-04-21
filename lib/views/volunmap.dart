import 'dart:io';
import 'package:flutter/material.dart';
import 'package:covid_helper/services/navi.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class VolunMap extends StatefulWidget {
  const VolunMap({ Key key, this.destination }) : super(key: key);
  final Destination destination;

  @override
  _VolunMapState createState() => _VolunMapState();
}

class _VolunMapState extends State<VolunMap> {
  GoogleMapController mapController;

  static final CameraPosition _startpoint = CameraPosition(
    target: LatLng(43.468437, -79.698716),
    zoom: 14,
  );

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: _startpoint,
        onMapCreated: _onMapCreated,
    ),
    );
      }
    }
