import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:geossocial_parque/firebase_options.dart';
import 'package:geossocial_parque/screens/curiosidades/curiosidades_a.dart';
import 'package:geossocial_parque/screens/curiosidades/curiosidades_b.dart';
import 'package:geossocial_parque/screens/curiosidades/curiosidades_c.dart';
import 'package:geossocial_parque/screens/georede/georede_a.dart';
import 'package:geossocial_parque/screens/georede/georede_b.dart';
import 'package:geossocial_parque/screens/georede/georede_c.dart';
import 'package:geossocial_parque/screens/georede/widgets/post.dart';
import 'package:geossocial_parque/screens/home/home.dart';
import 'package:geossocial_parque/screens/localizacao/localizacao_a.dart';
import 'package:geossocial_parque/screens/localizacao/localizacao_b.dart';
import 'package:geossocial_parque/screens/localizacao/localizacao_c.dart';
import 'package:geossocial_parque/screens/localizacao/repositories/parque_repository.dart';
import 'package:geossocial_parque/screens/login/login.dart';
import 'package:geossocial_parque/shared/utils/routes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FlutterConfig.loadEnvVariables();
  runApp(ChangeNotifierProvider<ParquesRepository>(
      create: (_) => ParquesRepository(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.login: (_) => const Login(),
        AppRoutes.home: (_) => const Home(),
        AppRoutes.georedeA: (_) => const GeoredeA(),
        AppRoutes.post: (_) => const Post(),
        AppRoutes.georedeB: (_) => const GeoredeB(),
        AppRoutes.georedeC: (_) => const GeoredeC(),
        AppRoutes.curiosidadesA: (_) => const CuriosidadesA(),
        AppRoutes.curiosidadesB: (_) => const CuriosidadesB(),
        AppRoutes.curiosidadesC: (_) => const CuriosidadesC(),
        AppRoutes.localizacaoA: (_) => const LocalizacaoA(
              latitude: -15.83623,
              longitude: -48.02343,
            ),
        AppRoutes.localizacaoB: (_) => const LocalizacaoB(
              latitude: -15.81315,
              longitude: -48.05621,
            ),
        AppRoutes.localizacaoC: (_) => const LocalizacaoC(
              latitude: -15.816612,
              longitude: -48.077794,
            ),
      },
    );
  }
}
