import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/curiosidades/curiosidades_a.dart';
import 'package:supercharged/supercharged.dart';

class ItenBotonMenu extends StatelessWidget {
  final IconData icon;
  final String text;
  // final VoidCallback? clique;

  const ItenBotonMenu({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all("EBF2FA".toColor()),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: "38B000".toColor(),
            ),
            const SizedBox(
              width: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 10, color: "38B000".toColor()),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext ctx) => const CuriosidadesA(),
            ),
          );
        },
      ),
    );
  }
}
