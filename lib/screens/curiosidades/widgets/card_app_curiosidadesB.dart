import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/curiosidades/widgets/card_app_model.dart';

class CardAppCuriosidadesB extends StatelessWidget {
  const CardAppCuriosidadesB({Key? key}) : super(key: key);

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
            titulo: 'Atrai multidão em busca de lazer em domingos e feriados',
            parqueImage: 'assets/image/taguaparque_entrada.jpg',
            text:
                'Maior parque da região de Taguatinga. Cerca de 10 mil pessoas visitam o Taguaparque durante a semana, 20 mil só nos finais de semana',
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
