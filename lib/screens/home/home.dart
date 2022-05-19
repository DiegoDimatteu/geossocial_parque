import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/home/widgets/card_app_home.dart';
import 'package:geossocial_parque/shared/widgets/header.dart';
import 'package:geossocial_parque/screens/home/widgets/button_menu_home.dart';
import 'package:supercharged/supercharged.dart';
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
        color: Colors.grey,
      ),
      backgroundColor: "004B23".toColor(),
      body: Stack(
        children: const [
          CardAppHome(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 100.0, left: 35, right: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            ItenBotonMenu(
              icon: Icons.social_distance_sharp,
              text: 'Georede',
            ),
            ItenBotonMenu(
              icon: Icons.device_unknown,
              text: 'Curiosidades',
            ),
            ItenBotonMenu(
              icon: Icons.location_on_outlined,
              text: 'Localização',
            ),
          ],
        ),
      ),
    );
  }
}
