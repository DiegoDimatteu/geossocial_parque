import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/localizacao/controller/parques_controller.dart';
import 'package:geossocial_parque/screens/localizacao/localizacao_a.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:supercharged/supercharged.dart';

class LocalizacaoB extends StatelessWidget {
  final double latitude;
  final double longitude;
  const LocalizacaoB(
      {Key? key, required this.latitude, required this.longitude})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: "004B23".toColor(),
      key: appKey,
      appBar: AppBar(
        backgroundColor: "004B23".toColor(),
        title: const Padding(
          padding: EdgeInsets.only(right: 48.0),
          child: Center(
            child: Text(
              'Link Park',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: ChangeNotifierProvider<ParquesController>(
        create: (context) => ParquesController(),
        child: Builder(builder: (context) {
          final local = context.watch<ParquesController>();

          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(latitude,
                  longitude), //latitude e longitude de onde quer que inicie a pesquisa
              zoom: 15,
            ),
            zoomControlsEnabled: true,
            mapType: MapType.normal,
            myLocationEnabled: true,
            onMapCreated: local.onMapCreated,
            markers: local.markers,
          );
        }),
      ),
    );
  }
}
