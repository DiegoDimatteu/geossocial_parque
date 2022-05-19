import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CardApp extends StatelessWidget {
  final Color cor;
  const CardApp({Key? key, required this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        decoration:
            BoxDecoration(color: cor, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
