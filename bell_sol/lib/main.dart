import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-inicial.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

    return MaterialApp(
        title:"BELLSOL",
        debugShowCheckedModeBanner: false,
        home: new TelaInicial(),
        routes: {

        });
  }
}
