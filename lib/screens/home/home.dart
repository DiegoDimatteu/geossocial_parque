import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/home/widgets/button_menu_home.dart';
import 'package:geossocial_parque/screens/home/widgets/card_app_home.dart';
import 'package:geossocial_parque/screens/home/widgets/dots_home.dart';
import 'package:geossocial_parque/shared/widgets/header.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supercharged/supercharged.dart';

import '../../shared/utils/routes.dart';
/*import 'package:supercharged/supercharged.dart';*/

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int _currentIndex;
  final user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    /* FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (user != null) {
        final userName = user.email;
      }
    }); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
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
                        image: NetworkImage('${user!.photoURL}'),
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
      ),
      backgroundColor: "004B23".toColor(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          CardAppHome(
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          DotsHome(
            currentIndex: _currentIndex,
            position: 410,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40.0, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ItenBotonMenu(
              icon: Icons.social_distance_sharp,
              text: 'Georede',
              currentIndex: _currentIndex,
              route1: AppRoutes.georedeA,
              route2: AppRoutes.georedeB,
              route3: AppRoutes.georedeC,
            ),
            ItenBotonMenu(
              icon: Icons.device_unknown,
              text: 'Curiosidades',
              currentIndex: _currentIndex,
              route1: AppRoutes.curiosidadesA,
              route2: AppRoutes.curiosidadesB,
              route3: AppRoutes.curiosidadesC,
            ),
            ItenBotonMenu(
              icon: Icons.location_on_outlined,
              text: 'Localização',
              currentIndex: _currentIndex,
              route1: AppRoutes.localizacaoA,
              route2: AppRoutes.localizacaoB,
              route3: AppRoutes.localizacaoC,
            ),
          ],
        ),
      ),
    );
  }
}
