import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CardApp extends StatelessWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
            color: "EBF2FA".toColor(), borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
