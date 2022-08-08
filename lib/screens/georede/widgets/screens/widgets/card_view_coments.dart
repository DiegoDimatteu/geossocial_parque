import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CardViewComents extends StatelessWidget {
  final String text;
  final String name;
  final String photo;
  const CardViewComents(
      {Key? key, required this.text, required this.name, required this.photo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
              border: Border.all(color: Colors.green),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 10),
            child: Container(
              decoration: BoxDecoration(
                color: "EBF2FA".toColor(),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 260,
                  child: Expanded(
                    child: Text(
                      text,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
