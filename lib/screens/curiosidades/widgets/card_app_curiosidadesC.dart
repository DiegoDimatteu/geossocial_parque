import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/curiosidades/widgets/card_app_model.dart';

class CardAppCuriosidadesC extends StatelessWidget {
  const CardAppCuriosidadesC({Key? key}) : super(key: key);

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
          CardAppModel(
            cor: Color.fromRGBO(235, 242, 250, 1),
            titulo:
                'Cascata do Parque Lago do Cortado reserva boas surpresas...',
            parqueImage: 'assets/image/romance.jpg',
            text: 'Lugar perfeito para passar aquele fim de tarde com o ♥',
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
