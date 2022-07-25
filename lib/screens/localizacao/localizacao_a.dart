import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/localizacao/controller/parques_controller.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:supercharged/supercharged.dart';

final appKey = GlobalKey();

class LocalizacaoA extends StatelessWidget {
  const LocalizacaoA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: "004B23".toColor(),
      key: appKey,
      appBar: AppBar(
        title: const Text(
          'Link Park',
          style: TextStyle(color: Colors.black),
        ),
      ),
      /* appBar: Header(),
      drawer: Container(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: "004B23".toColor(),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${user!.displayName}',
                    style: const TextStyle(
                      color: Color.fromRGBO(235, 242, 250, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('${user.photoURL}'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.home);
              },
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () async {
                final GoogleSignIn googleSignIn = GoogleSignIn();
                await googleSignIn.signOut();
                await FirebaseAuth.instance.signOut();

                Navigator.of(context).pushNamed(AppRoutes.login);
              },
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * .6,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(235, 242, 250, 1),
      ), */
      body: ChangeNotifierProvider<ParquesController>(
        create: (context) => ParquesController(),
        child: Builder(builder: (context) {
          final local = context.watch<ParquesController>();

          return GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(-15.83183,
                  -48.02899), //latitude e longitude de onde quer que inicie a pesquisa
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
