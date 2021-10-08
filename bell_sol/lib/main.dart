import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-inicial.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:z_components/components/utils/theme.dart';


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
        theme: CustomTheme.appTheme.copyWith(accentColor: Colors.blue),
        home: new TelaInicial(),
        routes: {

        });
  }
}
