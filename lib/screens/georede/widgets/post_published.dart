import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/georede/widgets/button_custom.dart';
import 'package:geossocial_parque/screens/georede/widgets/button_like.dart';
import 'package:supercharged/supercharged.dart';

class PostPublished extends StatelessWidget {
  final String image;
  const PostPublished({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color cor = Colors.green;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 370,
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
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: "EBF2FA".toColor(),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Icon(Icons.person, size: 25),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Diego Dimatteu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 250,
            width: 350,
            child: Image.asset(image),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ButtonLike(
                icon: Icons.sentiment_very_satisfied,
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
