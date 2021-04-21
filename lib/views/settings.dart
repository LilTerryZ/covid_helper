import 'dart:io';
import 'package:covid_helper/services/constants.dart';
import 'package:flutter/material.dart';
import 'package:covid_helper/views/request.dart';
import 'package:covid_helper/services/navi.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Settings extends StatefulWidget {
  const Settings({ Key key, this.destination }) : super(key: key);
  final Destination destination;

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Text("")
    );
  }
}
