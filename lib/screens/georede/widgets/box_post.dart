import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class BoxPost extends StatelessWidget {
  const BoxPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 230,
      decoration: BoxDecoration(
        color: "EBF2FA".toColor(),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
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
                const SizedBox(width: 10),
                Text(
                  '${user.displayName}',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Center(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'No que você está pensando?',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5, // <-- SEE HERE
                minLines: 1, // <-- SEE HERE
              ),
            ),
          ],
        ),
      ),
    );
  }
}
