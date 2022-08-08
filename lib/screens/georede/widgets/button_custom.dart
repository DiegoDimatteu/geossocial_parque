import 'package:flutter/material.dart';
import 'package:social_share/social_share.dart';
import 'package:supercharged/supercharged.dart';

class ButtonCustom extends StatelessWidget {
  final IconData icon;
  final String route;

  const ButtonCustom({Key? key, required this.icon, this.route = ''})
      : super(key: key);

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
        onPressed: () {
          if (route != '') {
            Navigator.pushNamed(context, route);
          } else {
            SocialShare.shareOptions("Venha para o LinkPark!!!!");
          }
        },
      ),
    );
  }
}
