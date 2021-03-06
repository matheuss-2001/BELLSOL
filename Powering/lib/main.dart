import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:powering/presenter/base-screen.dart';
import 'package:powering/presenter/map-screen.dart';
import 'package:powering/utils/location_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => LocationProvider(),
               child:MapScreen(),
          )
        ],
      child: MaterialApp(
        title:"Powering",
        debugShowCheckedModeBanner: false,
        theme: Theme.of(context),//CustomTheme.appTheme.copyWith(accentColor: Colors.white),
        home:  BaseScreen(),
      ),
    );
  }
}


/*
z_components:
      git:
        url: https://github.com/enzotiezzi/zcomponents.git
        ref: 78e13df
 */