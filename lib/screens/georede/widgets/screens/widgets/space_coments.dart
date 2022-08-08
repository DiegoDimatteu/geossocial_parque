import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/shared/utils/routes.dart';
import 'package:supercharged/supercharged.dart';

class SpaceComents extends StatelessWidget {
  const SpaceComents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: "EBF2FA".toColor(),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green),
      ),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('${user!.photoURL}'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                color: "EBF2FA".toColor(),
                border: Border.all(color: Colors.grey),
              ),
            ),
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                color: "EBF2FA".toColor(),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 12.0, left: 5),
                child: Text(
                  'Criar comentário',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
        onTap: () {
          Navigator.of(context).pushNamed(AppRoutes.coments);
        },
      ),
    );
  }
}
