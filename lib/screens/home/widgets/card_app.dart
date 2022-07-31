import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CardApp extends StatelessWidget {
  final Color cor;
  final String text;
  final double espacamento;
  final double larguraImage, alturaImage;
  final double fontTamanho;
  final IconData icon;
  const CardApp({
    Key? key,
    required this.cor,
    this.text = '',
    this.fontTamanho = 30.0,
    this.larguraImage = 100.0,
    this.alturaImage = 100.0,
    this.espacamento = 70,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
      child: Container(
        decoration:
            BoxDecoration(color: cor, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              text,
              style:
                  TextStyle(fontSize: fontTamanho, color: "38B000".toColor()),
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            Icon(
              icon,
              color: const Color.fromARGB(255, 31, 129, 37),
              size: 150,
            ),
          ],
        ),
      ),
    );
  }
}
