import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class ButtonLike extends StatefulWidget {
  final int like;
  final IconData icon;
  final String text;
  final Color cor;
  const ButtonLike(
      {Key? key,
      this.like = 0,
      required this.icon,
      required this.text,
      this.cor = Colors.black})
      : super(key: key);

  @override
  State<ButtonLike> createState() => _ButtonLikeState();
}

class _ButtonLikeState extends State<ButtonLike> {
  int likeAtual = 10;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 80,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all("EBF2FA".toColor()),
        ),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '$likeAtual',
              style: const TextStyle(color: Colors.black),
            )
          ],
        ),
        onPressed: () {
          likeAtual++;
        },
      ),
    );
  }
}
