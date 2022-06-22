import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class PublishPost extends StatelessWidget {
  const PublishPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 80,
      decoration: BoxDecoration(
        color: "EBF2FA".toColor(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: "EBF2FA".toColor(),
              border: Border.all(color: Colors.grey),
            ),
            child: const Icon(Icons.person, size: 50),
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
                'Começar publicação',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
