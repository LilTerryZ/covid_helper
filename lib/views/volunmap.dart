import 'package:flutter/material.dart';
import 'package:covid_helper/services/navi.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math';

class VolunMap extends StatefulWidget {
  const VolunMap({ Key key, this.destination }) : super(key: key);
  final Destination destination;

  @override
  _VolunMapState createState() => _VolunMapState();
}

class _VolunMapState extends State<VolunMap> {
  Set<Marker> _markers = Set();
  GoogleMapController mapController;

  List<String> _names = <String>["James","Sam","Coco","Jane","Abbey","Robert",
    "Michael","Thomas","Charles","Olivia","Sophia","Terry","Mia","William"];
  var c=0;

  static final CameraPosition _startpoint = CameraPosition(
    target: LatLng(43.468437, -79.698716),
    zoom: 15,
  );

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;

  }
  @override
  Widget build(BuildContext context) {
    var volunCord = new Random();
    for (var i = 0; i < 7; i++) {
      double a=(volunCord.nextDouble() + 4346)/100;
      double b=(volunCord.nextDouble() - 7970)/100;
      a=double.parse(a.toStringAsFixed(6));
      b=double.parse(b.toStringAsFixed(6));
      var c=(volunCord.nextInt(13));
      LatLng randomLatLng = new LatLng(a, b);
      _markers.add(
          Marker(
              markerId: MarkerId("$i"),
              position: randomLatLng,
              infoWindow: InfoWindow(
                  title: _names[c]
              )
          )
      );
      print(_markers);
    }
    return new Scaffold(
      body: GoogleMap(
        myLocationEnabled: true,
        mapType: MapType.hybrid,
        initialCameraPosition: _startpoint,
        onMapCreated: _onMapCreated,
        markers: Set<Marker>.of(_markers),
        myLocationButtonEnabled: false,
      ),
    );
      }
}

