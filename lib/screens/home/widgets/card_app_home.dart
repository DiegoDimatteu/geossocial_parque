import 'package:flutter/material.dart';
import 'card_app.dart';

class CardAppHome extends StatelessWidget {
  const CardAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .04,
      height: MediaQuery.of(context).size.height * .48,
      left: 0,
      right: 0,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        children: const <Widget>[
          CardApp(
            cor: Color.fromRGBO(235, 242, 250, 1),
            text: 'Parque Ecológico de Águas Claras',
            fontTamanho: 20.0,
            parqueImage: 'assets/image/logo.png',
          ),
          CardApp(
            cor: Color.fromRGBO(235, 242, 250, 1),
            text: 'Taguaparque',
            fontTamanho: 20.0,
            parqueImage: 'assets/image/logo.png',
          ),
          CardApp(
            cor: Color.fromRGBO(235, 242, 250, 1),
            text: 'Parque Ecológico do Cortado',
            fontTamanho: 20.0,
            espacamento: 45,
            parqueImage: 'assets/image/cortado.png',
            alturaImage: 150.0,
            larguraImage: 250.0,
          ),
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
