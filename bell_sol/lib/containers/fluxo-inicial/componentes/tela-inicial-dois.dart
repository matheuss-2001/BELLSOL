import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class TelaInicialDois extends StatefulWidget {


  @override
  _TelaInicialDoisState createState() => _TelaInicialDoisState();
}

class _TelaInicialDoisState extends State<TelaInicialDois> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_buildBody(),
    );
  }

  Widget _buildBody(){

    double long = 49.5;
    double lat = -0.09;
    LatLng point = LatLng(49.5, -0.09);
    var location = [];

     return Stack(
       children: [
         FlutterMap(
           options: MapOptions(
             center: LatLng(49.5,-0.09),
             zoom:10.0
           ),
           layers:[
            TileLayerOptions(
              urlTemplate:"https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
             MarkerLayerOptions(
               markers: [
                 Marker(
              width: 80.0,
              height: 80.0,
              point: point,
            builder: (ctx) => Container(
            child: Icon(
            Icons.location_on,
           color: Colors.red,
            )
    ),
                 )
               ]
             ),

           ]
         )
       ],
     );
  }
}
