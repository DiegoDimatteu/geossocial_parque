import 'package:flutter/material.dart';
import 'package:geossocial_parque/shared/utils/routes.dart';
import 'package:supercharged/supercharged.dart';

class ItenBotonMenu extends StatelessWidget {
  final IconData icon;
  final String text;
  final String route1, route2, route3;
  final int currentIndex;
  // final VoidCallback? clique;

  const ItenBotonMenu({
    Key? key,
    required this.icon,
    required this.text,
    required this.route1,
    required this.route2,
    required this.route3,
    required this.currentIndex,
  }) : super(key: key);

  String escolherRota(String route1, String route2, String route3, int index) {
    if (index == 0) {
      return route1;
    } else if (index == 1) {
      return route2;
    } else {
      return route3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      width: 95,
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
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 10, color: "38B000".toColor()),
            ),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(
              context, escolherRota(route1, route2, route3, currentIndex));
        },
      ),
    );
  }
}
