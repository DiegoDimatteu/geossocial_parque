import 'package:flutter/material.dart';
import '../../../shared/widgets/card_app.dart';

class CardAppHome extends StatelessWidget {
  const CardAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .04,
      height: MediaQuery.of(context).size.height * .48,
      left: 20,
      right: 20,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        children: const <Widget>[
          CardApp(cor: Color(0xFF42A5F5)),
          CardApp(cor: Color.fromARGB(255, 228, 104, 27)),
          CardApp(cor: Color.fromARGB(255, 113, 15, 81)),
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
