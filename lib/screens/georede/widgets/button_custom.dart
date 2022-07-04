import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class ButtonCustom extends StatelessWidget {
  final IconData icon;

  const ButtonCustom({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 80,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all("EBF2FA".toColor()),
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
