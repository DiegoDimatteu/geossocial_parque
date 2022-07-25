import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/georede/widgets/header_georede.dart';
import 'package:geossocial_parque/screens/georede/widgets/post_published.dart';
import 'package:geossocial_parque/screens/georede/widgets/publish_post.dart';
import 'package:geossocial_parque/shared/utils/routes.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supercharged/supercharged.dart';

class GeoredeA extends StatefulWidget {
  const GeoredeA({Key? key}) : super(key: key);

  @override
  State<GeoredeA> createState() => _GeoredeAState();
}

class _GeoredeAState extends State<GeoredeA> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "004B23".toColor(),
      drawer: Container(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: "004B23".toColor(),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${user!.displayName}',
                    style: const TextStyle(
                      color: Color.fromRGBO(235, 242, 250, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('${user!.photoURL}'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.home);
              },
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () async {
                final GoogleSignIn googleSignIn = GoogleSignIn();
                await googleSignIn.signOut();
                await FirebaseAuth.instance.signOut();

                Navigator.of(context).pushNamed(AppRoutes.login);
              },
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * .6,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(235, 242, 250, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: ListView(
          children: [
            HeaderGeorede(),
            const SizedBox(
              height: 30,
            ),
            const PublishPost(),
            const SizedBox(
              height: 40,
            ),
            const PostPublished(image: 'assets/image/parque_cortado.png'),
            const SizedBox(
              height: 15,
            ),
            const PostPublished(image: 'assets/image/cachoeira_cortado.jpg'),
            const SizedBox(
              height: 15,
            ),
            const PostPublished(image: 'assets/image/taguaparque_entrada.jpg'),
            const SizedBox(
              height: 15,
            ),
            const PostPublished(image: 'assets/image/taguaparque_portao.jpg'),
          ],
        ),
      ),
    );
  }
}
