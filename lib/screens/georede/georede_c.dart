import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/georede/widgets/header_georede.dart';
import 'package:geossocial_parque/screens/georede/widgets/post_published.dart';
import 'package:geossocial_parque/screens/georede/widgets/publish_post.dart';
import 'package:supercharged/supercharged.dart';

class GeoredeC extends StatelessWidget {
  const GeoredeC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "004B23".toColor(),
      drawer: Container(
        child: const FlutterLogo(),
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
            const PostPublished(image: 'assets/image/ponte_cortado.jpg'),
            const SizedBox(
              height: 15,
            ),
            const PostPublished(image: 'assets/image/drone_cortado.jpg'),
          ],
        ),
      ),
    );
  }
}
