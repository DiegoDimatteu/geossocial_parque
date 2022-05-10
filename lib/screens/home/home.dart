import 'package:flutter/material.dart';
import 'package:geossocial_parque/shared/widgets/iten_boton_menu.dart';
import 'package:supercharged/supercharged.dart';
/*import 'package:supercharged/supercharged.dart';*/

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
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
      ),
      drawer: Container(
        child: FlutterLogo(),
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
