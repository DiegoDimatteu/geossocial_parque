import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class PostPublished extends StatelessWidget {
  const PostPublished({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 280,
      decoration: BoxDecoration(
        color: "EBF2FA".toColor(),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
