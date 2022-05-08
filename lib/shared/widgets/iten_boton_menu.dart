import 'package:flutter/material.dart';

class ItenBotonMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItenBotonMenu({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      alignment: Alignment.center,
      width: 90,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7, color: Colors.white),
          top: BorderSide(width: 0.7, color: Colors.white),
        ),
      ),
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
