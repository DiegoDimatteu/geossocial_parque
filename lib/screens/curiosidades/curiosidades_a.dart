import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/curiosidades/widgets/card_app_curiosidades.dart';
import 'package:geossocial_parque/shared/widgets/header.dart';
import 'package:supercharged/supercharged.dart';

class CuriosidadesA extends StatelessWidget {
  const CuriosidadesA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "004B23".toColor(),
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
                  const Text(
                    'Diego Dimatteu',
                    style: TextStyle(
                      color: Color.fromRGBO(235, 242, 250, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: "EBF2FA".toColor(),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const Icon(Icons.person, size: 25),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * .6,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey,
      ),
      body: Stack(
        children: const [
          CardAppCuriosidades(),
        ],
      ),
    );
  }
}
