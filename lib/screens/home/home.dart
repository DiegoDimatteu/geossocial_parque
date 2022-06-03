import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/home/widgets/button_menu_home.dart';
import 'package:geossocial_parque/screens/home/widgets/card_app_home.dart';
import 'package:geossocial_parque/shared/widgets/header.dart';
import 'package:supercharged/supercharged.dart';

import '../../shared/utils/routes.dart';
/*import 'package:supercharged/supercharged.dart';*/

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      drawer: Container(
        child: const FlutterLogo(),
        width: MediaQuery.of(context).size.width * .6,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(235, 242, 250, 1),
      ),
      backgroundColor: "004B23".toColor(),
      body: Stack(
        children: const [
          CardAppHome(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40.0, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            ItenBotonMenu(
              icon: Icons.social_distance_sharp,
              text: 'Georede',
              route: AppRoutes.georedeA,
            ),
            ItenBotonMenu(
              icon: Icons.device_unknown,
              text: 'Curiosidades',
              route: AppRoutes.curiosidadesA,
            ),
            ItenBotonMenu(
              icon: Icons.location_on_outlined,
              text: 'Localização',
              route: AppRoutes.localizacaoA,
            ),
          ],
        ),
      ),
    );
  }
}
