import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/georede/widgets/screens/widgets/header_coments.dart';
import 'package:geossocial_parque/screens/georede/widgets/screens/widgets/load_coments.dart';
import 'package:supercharged/supercharged.dart';

class ViewComents extends StatelessWidget {
  const ViewComents({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: "004B23".toColor(),
      appBar: HeaderComents(),
      body: const LoadComents(),
    );
  }
}
