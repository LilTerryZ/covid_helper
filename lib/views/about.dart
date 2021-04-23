import 'dart:io';
import 'package:covid_helper/services/constants.dart';
import 'package:flutter/material.dart';
import 'package:covid_helper/views/signin.dart';
import 'package:covid_helper/services/navi.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:covid_helper/services/helpfunctions.dart';
//import 'package:covid_helper/helper/theme.dart';
import 'package:covid_helper/services/auth.dart';
import 'package:covid_helper/services/database.dart';
import 'package:covid_helper/views/signin.dart';
import 'package:covid_helper/services/widget.dart';

class About extends StatefulWidget {
  const About({ Key key, this.destination }) : super(key: key);
  final Destination destination;

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  'This app is developed by ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.normal),
                ),
                Text(
                    '\nHaonan Zhang',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),

                ),
                Text(
                  '& ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),

                ),
                Text(
                  'Tanishq Korada Ramkumar',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                ),
                Text(
                  '\n\nIts an app about Volunteering '
                      '\nduring COVID-19'
                      '\n seniors in need are able to contact'
                      '\n volunteerss to help them.'
                      '\n\nFeatures:'
                      '\nBuild personal profile'
                      '\nCheck Volunteers near you'
                      '\nRequest Help from your community'
                      '\nMessage people who can help',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold),
                ),

          ],
                ),
          ),
              ),
          );
  }
}
