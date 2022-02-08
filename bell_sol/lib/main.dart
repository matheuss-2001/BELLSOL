<<<<<<< HEAD
import 'package:bell_sol/containers/fluxo-inicial/componentes/home-page.dart';
=======
import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-inicial-dois.dart';
>>>>>>> c3d43c19ef07902aac540b09fd0c061a9d722241
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
<<<<<<< HEAD
          home: new HomePage(),
        routes: {

        });
=======
        home: new TelaInicialDois(),
        );
>>>>>>> c3d43c19ef07902aac540b09fd0c061a9d722241
  }
}
