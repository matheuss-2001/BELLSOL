import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:powering/utils/location_provider.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatefulWidget {
  static String ROUTER = "/tela-aniversario";

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Widget appBarTitle = const Text(
    "Powering",
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  );
  var prefixIcon = const Icon(Icons.search, color: Colors.white);
  Icon appBarIcon = const Icon(Icons.search, color: Colors.white);
  TextEditingController searchAddressController = TextEditingController();
  String endereco = '';
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
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      body: _buildBody(),
      appBar: _buildAppBar(),
    );
  }

  void atribuirEndereco(){
    setState(() {
      searchAddressController.text = endereco;
      print(endereco);

    });

  }
  showSearchAppbar() {
    if (appBarIcon.icon == Icons.search) {

      appBarIcon = const Icon(
        Icons.close,
        color: Colors.white,

      );
      appBarTitle = TextField(
        controller: searchAddressController,
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          prefixIcon: Icon(

            Icons.search,
            color: Colors.white,
          ),

          hintText: "Type your Address",
          hintStyle: TextStyle(color: Colors.white),
        ),
      );
    } else {
      appBarIcon = const Icon(Icons.search);
      appBarTitle = const Text(
        "Powering",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      );
    }
  }

  _buildAppBar() {
    return AppBar(
      title: appBarTitle,
      centerTitle: false,
      actions: <Widget>[
        IconButton(
          icon: appBarIcon,
          onPressed: () {
            setState(() {
              showSearchAppbar();
            });
          },
        ),
      ],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(16),
      )),
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(0.30),
    );
  }

  Widget _buildBody() {
    return Consumer<LocationProvider>(builder: (consumerContext, model, child) {
      if (model.locationPosition != null) {
        return Stack(
          children: [
            GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition:
                  CameraPosition(target: model.locationPosition, zoom: 14),
              myLocationButtonEnabled: false,
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

@override
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
