import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/curiosidades/widgets/card_app_model.dart';

class CardAppCuriosidades extends StatelessWidget {
  const CardAppCuriosidades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .04,
      height: MediaQuery.of(context).size.height * .7,
      left: 0,
      right: 0,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        children: const <Widget>[
          CardAppModel(cor: Color(0xFF42A5F5)),
          CardAppModel(cor: Color.fromARGB(255, 228, 104, 27)),
          CardAppModel(cor: Color.fromARGB(255, 113, 15, 81)),
          CardAppModel(cor: Color.fromARGB(255, 69, 163, 15)),
          CardAppModel(cor: Color.fromARGB(255, 184, 29, 158)),
          CardAppModel(cor: Color.fromARGB(255, 18, 233, 204)),
        ],
        /* physics: const BouncingScrollPhysics(),
        children: const [
          CardApp(cor: Color(0xFF42A5F5)),
          CardApp(cor: Color.fromARGB(255, 193, 132, 0)),
          CardApp(cor: Color.fromARGB(255, 27, 165, 43)),
        ], */
      ),
    );
  }
}
