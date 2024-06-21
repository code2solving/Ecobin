import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:60),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 125),
                Container(
                  width:120,
                  height: 28,
                  child: Text('Карта',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: 37),
                Container(
                  child: Image.asset('assets/images/sliders.png'),
                ),
                SizedBox(width: 24),
                Container(
                  padding: EdgeInsets.only(right:11),
                  child: Image.asset('assets/images/info.png'),
                )
              ]
            ),
          ),
          Container(
            height: 738,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map.png'),
                fit: BoxFit.cover
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(width: 30),
                      Container(
                        child: Image.asset('assets/images/list.png'),
                      ),
                      SizedBox(width: 56),
                      Container(
                        width: 140,
                        height: 40,
                        child: Container(
                          padding: EdgeInsets.only(top:9),
                          child: Text(
                            'Сканировать QR',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 14
                          ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color:Color(0xff5E63DB),
                          borderRadius: BorderRadius.circular(40)
                        ),
                      ),
                      SizedBox(width: 56),
                      Container(
                        child: Image.asset('assets/images/book.png'),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
