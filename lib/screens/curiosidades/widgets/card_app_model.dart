import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CardAppModel extends StatelessWidget {
  final Color cor;
  final String text;
  final double textTamanho;
  final String titulo;
  final String parqueImage;
  final double fontTamanho;
  const CardAppModel({
    Key? key,
    required this.cor,
    this.text = '',
    this.fontTamanho = 30.0,
    this.parqueImage = '',
    this.titulo = '',
    this.textTamanho = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
      child: Container(
        decoration:
            BoxDecoration(color: cor, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                titulo,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: fontTamanho,
                    color: "38B000".toColor(),
                    fontFamily: 'title'),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(parqueImage),
              const SizedBox(
                height: 20,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: textTamanho,
                    color: Colors.black,
                    fontFamily: 'title'),
              ),
              //const Padding(padding: EdgeInsets.only(top: 70)),
            ],
          ),
        ),
      ),
    );
  }
}
