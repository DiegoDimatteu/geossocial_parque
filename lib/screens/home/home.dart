import 'package:flutter/material.dart';
import 'package:geossocial_parque/shared/widgets/header.dart';
import 'package:geossocial_parque/shared/widgets/iten_boton_menu.dart';
import 'package:supercharged/supercharged.dart';
/*import 'package:supercharged/supercharged.dart';*/

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 55),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                'assets/image/logo.png',
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
              SizedBox(
                width: 10,
              ),
              const Text('LinkPark'),
            ],
          ),
        ),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 25, top: 40),
              child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            );
          },
        ),
      ), */
      appBar: Header(),
      drawer: Container(
        child: const FlutterLogo(),
        width: MediaQuery.of(context).size.width * .6,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey,
      ),
      backgroundColor: "004B23".toColor(),
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
