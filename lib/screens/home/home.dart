import 'package:flutter/material.dart';
import 'package:geossocial_parque/shared/widgets/iten_boton_menu.dart';
import 'package:supercharged/supercharged.dart';
/*import 'package:supercharged/supercharged.dart';*/

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Container(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            ItenBotonMenu(
              icon: Icons.location_on_outlined,
              text: 'Localização',
            ),
            ItenBotonMenu(
              icon: Icons.location_on_outlined,
              text: 'Localização',
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
