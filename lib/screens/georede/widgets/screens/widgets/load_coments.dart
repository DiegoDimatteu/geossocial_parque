import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/georede/widgets/screens/widgets/card_view_coments.dart';
import 'package:supercharged/supercharged.dart';

class LoadComents extends StatefulWidget {
  const LoadComents({Key? key}) : super(key: key);

  @override
  State<LoadComents> createState() => _LoadComentsState();
}

class _LoadComentsState extends State<LoadComents> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream =
        FirebaseFirestore.instance.collection('comentsPA').snapshots();
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
                  CardViewComents(
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
