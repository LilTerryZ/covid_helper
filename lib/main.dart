import 'package:covid_helper/services/authenticate.dart';
import 'package:covid_helper/services/helpfunctions.dart';
import 'package:covid_helper/views/request.dart';
import 'package:flutter/material.dart';
import 'package:covid_helper/views/signin.dart';
import 'package:covid_helper/views/chat.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  //GoogleMap.init('AIzaSyCtRPUbfbSgSdLiNzzSDIRPDjtkiT5jZTE');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool userIsLoggedIn;

  @override
  void initState() {
    // getLoggedInState();
    super.initState();
  }

  // getLoggedInState() async {
  //   await HelperFunctions.getUserLoggedInSharedPreference().then((value){
  //     setState(() {
  //       userIsLoggedIn  = value;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CovidHelper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff065279),
        scaffoldBackgroundColor: Color(0xff4C8DAE),
        accentColor: Color(0xff177CB0),
        fontFamily: "OverpassRegular",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(
       child: Center(
         child: Authenticate(),
       ),
     ),
    );
  }
}

