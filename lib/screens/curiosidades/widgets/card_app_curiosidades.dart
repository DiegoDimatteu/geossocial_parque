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
          CardAppModel(
            cor: Color.fromRGBO(235, 242, 250, 1),
            titulo: 'Maior parque ecológico do DF',
            parqueImage: 'assets/image/reforma_aguas.jpg',
            text:
                'Parque passou a ter 130 hectares, tornando-se o maior parque ecológico urbano do Distrito Federal.',
          ),
          CardAppModel(
            cor: Color.fromRGBO(235, 242, 250, 1),
            titulo: 'Capivaras mandam no parque',
            parqueImage: 'assets/image/capivara_aguas.jpg',
            text:
                'O parque sempre foi frequntado por capivaras, porém ultimamente esse número aumentou. Parece que a família cresceu!!!',
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
