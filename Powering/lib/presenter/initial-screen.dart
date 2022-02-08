import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:powering/utils/location_provider.dart';
import 'package:provider/provider.dart';

class InitialScreen extends StatefulWidget {
  static final String ROUTER = "/tela-aniversario";

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  //late InitialScreenView _view;

  @override
  void initState() {
    //_view.initView();
    //_view =  InitialScreenView(this);
    super.initState();
    returnLocation();
  }

  Future<void> returnLocation() async {
    await Provider.of<LocationProvider>(context, listen: false).initalization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Consumer<LocationProvider>(builder: (consumerContext, model, child) {
      if (model.locationPosition != null) {
        return Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition:
                  CameraPosition(target: model.locationPosition, zoom: 18),
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              onMapCreated: (GoogleMapController controller) {},
            ),
          ],
        );
      }
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
