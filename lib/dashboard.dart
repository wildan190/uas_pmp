import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:uas_pmp/location.dart';
import 'package:uas_pmp/screens/add_screen.dart';
import 'package:uas_pmp/screens/info_screen.dart';
//import 'package:hive_demo/utils/add_person_form.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:hive_demo/location.dart';

class dashboard extends StatelessWidget {
  dashboard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 197.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
                color: const Color(0xffe0c5eb),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 6),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 255.0, middle: 0.5032),
            Pin(size: 53.0, start: 99.0),
            child: Text(
              'UAS FLUTTER',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 40,
                color: const Color(0xff474343),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 56.0, end: 56.0),
            Pin(size: 258.0, middle: 0.4412),
            child:
                // Adobe XD layer: 'unnamed' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/umblogo.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          /*Pinned.fromPins(
            Pin(start: 56.0, end: 55.0),
            Pin(size: 57.0, middle: 0.7146),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(54, 126, 235, 10)),
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => InfoScreen());
                Navigator.push(context, route);
              },
            ),
          ),
          Pinned.fromPins(
            Pin(start: 56.0, end: 55.0),
            Pin(size: 57.0, middle: 0.8118),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 56.0, end: 55.0),
            Pin(size: 57.0, end: 74.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),*/
          Pinned.fromPins(
            Pin(start: 56.0, end: 55.0),
            Pin(size: 57.0, middle: 0.7146),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(54, 126, 235, 10)),
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => InfoScreen());
                Navigator.push(context, route);
              },
              child: Text(
                'List Data Mahasiswa',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 10),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 56.0, end: 55.0),
            Pin(size: 57.0, middle: 0.8118),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(54, 126, 235, 10)),
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => AddScreen());
                Navigator.push(context, route);
              },
              child: Text(
                'Input Data Mahasiswa',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 10),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 56.0, end: 55.0),
            Pin(size: 57.0, end: 64.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(54, 126, 235, 10)),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => MyMaps());
                Navigator.push(context, route);
              },
              child: Text(
                'Lokasi Kampus UMB',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
