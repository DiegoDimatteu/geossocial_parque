import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/georede/widgets/button_custom.dart';
import 'package:geossocial_parque/screens/georede/widgets/button_like.dart';
import 'package:supercharged/supercharged.dart';

class PostExample extends StatelessWidget {
  final String text;
  final String name;
  final String photo;
  const PostExample(
      {Key? key, required this.text, required this.name, required this.photo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    Color cor = Colors.green;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 210,
      decoration: BoxDecoration(
        color: "EBF2FA".toColor(),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(photo),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                    color: "EBF2FA".toColor(),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 75,
              child: Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ButtonLike(
                icon: Icons.thumb_up_alt_sharp,
                text: '',
              ),
              ButtonCustom(icon: Icons.comment_outlined),
              ButtonCustom(icon: Icons.share),
            ],
          )
        ],
      ),
    );
  }
}
