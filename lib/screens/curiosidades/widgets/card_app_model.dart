import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CardAppModel extends StatelessWidget {
  final Color cor;
  final String text;
  final String? parqueImage;
  final double fontTamanho;
  const CardAppModel({
    Key? key,
    required this.cor,
    this.text = '',
    this.fontTamanho = 30.0,
    this.parqueImage,
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
              height: 20,
            ),
            Text(
              text,
              style:
                  TextStyle(fontSize: fontTamanho, color: "38B000".toColor()),
            ),
            const Padding(padding: EdgeInsets.only(top: 70)),
          ],
        ),
      ),
    );
  }
}
