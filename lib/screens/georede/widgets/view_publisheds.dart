import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/georede/widgets/text_post.dart';
import 'package:supercharged/supercharged.dart';

class ViewPublisheds extends StatefulWidget {
  const ViewPublisheds({Key? key}) : super(key: key);

  @override
  State<ViewPublisheds> createState() => _ViewPublishedsState();
}

class _ViewPublishedsState extends State<ViewPublisheds> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream =
        FirebaseFirestore.instance.collection('redePA').snapshots();
    return StreamBuilder(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: "004B23".toColor(),
              child: const Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return Column(
                children: [
                  TextPost(
                    text: data['text'] ?? '',
                    name: data['name'] ?? '',
                    photo: data['photo'] ?? '',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              );
            }).toList(),
          );
        });
  }
}
