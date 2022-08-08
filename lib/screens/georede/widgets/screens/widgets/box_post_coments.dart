import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/shared/utils/routes.dart';
import 'package:supercharged/supercharged.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BoxPostComents extends StatefulWidget {
  const BoxPostComents({Key? key}) : super(key: key);

  @override
  State<BoxPostComents> createState() => _BoxPostComentsState();
}

class _BoxPostComentsState extends State<BoxPostComents> {
  @override
  Widget build(BuildContext context) {
    String text = '';
    CollectionReference users =
        FirebaseFirestore.instance.collection('comentsPA');
    final user = FirebaseAuth.instance.currentUser;
    Future<void> addUser() {
      return users
          .add({
            'name': user!.displayName,
            'photo': user.photoURL,
            'text': text,
          })
          .then(
              (value) => Navigator.of(context).pushNamed(AppRoutes.viewComents))
          .catchError((error) => print("Failed to add post: $error"));
    }

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          height: 180,
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
                Center(
                  child: TextField(
                    onChanged: (temp) {
                      text = temp;
                    },

                    decoration: const InputDecoration(
                      labelText: 'No que você está pensando? Comente!!',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3, // <-- SEE HERE
                    minLines: 1, // <-- SEE HERE
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Button(text: texto),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 15, 102, 3),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  height: 40,
                  width: 80,
                  child: const Center(
                      child: Text(
                    'Enviar',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                ),
                onTap: addUser,
              )
            ],
          ),
        ),
      ],
    );
  }
}
