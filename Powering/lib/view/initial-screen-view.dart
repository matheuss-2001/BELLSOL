
/*
import 'package:flutter/cupertino.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong/latlong.dart';
import 'package:powering/presenter/initial-screen.dart';
import 'package:z_components/i-view.dart';

class InitialScreenView extends IView<InitialScreen> {
  double long = 49.5;
  double lat = -0.09;
  LatLng point = LatLng(49.5, -0.09);
  Position currentPosition;
  //var geoLocator = Geolocator();


  void findMyLocation()async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy:LocationAccuracy.high);
    currentPosition = position;
    LatLng latPosition = LatLng(position.latitude, position.longitude);
  }


  InitialScreenView(State<InitialScreen> state) : super(state);

  @override
  Future initView() async {
   findMyLocation();
  }




  @override
  Future<void> afterBuild()  {}

}

 */