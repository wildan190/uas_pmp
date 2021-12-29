import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:uas_pmp/dashboard.dart';

class start extends StatelessWidget {
  start({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -84.0, end: -84.0),
            Pin(start: 0.0, end: 0.0),
            child:
                // Adobe XD layer: 'qqq' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/tscreen.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 191.0, start: 32.0),
            Pin(size: 66.0, middle: 0.3806),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(54, 126, 235, 10)),
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => dashboard());
                Navigator.push(context, route);
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 10),
                ),
              ),
            ),
            /*child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),*/
          ),
          Pinned.fromPins(
            Pin(size: 276.0, start: 32.0),
            Pin(size: 107.0, middle: 0.1822),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 40,
                  color: const Color(0xff131313),
                ),
                children: [
                  TextSpan(
                    text: 'Safe Your Data\n',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'with Peoples\nYour Privacy Will Be Safe...',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
