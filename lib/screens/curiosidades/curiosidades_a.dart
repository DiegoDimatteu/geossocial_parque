import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/curiosidades/widgets/card_app_curiosidades.dart';
import 'package:geossocial_parque/shared/widgets/header.dart';
import 'package:supercharged/supercharged.dart';

class CuriosidadesA extends StatelessWidget {
  const CuriosidadesA({Key? key}) : super(key: key);

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
          CardAppCuriosidades(),
        ],
      ),
    );
  }
}
