import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/curiosidades/curiosidades_a.dart';
import 'package:geossocial_parque/screens/georede/georede_a.dart';
import 'package:geossocial_parque/screens/home/home.dart';
import 'package:geossocial_parque/screens/localizacao/localizacao_a.dart';
import 'package:geossocial_parque/shared/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home: (_) => const Home(),
        AppRoutes.georedeA: (_) => const GeoredeA(),
        AppRoutes.curiosidadesA: (_) => const CuriosidadesA(),
        AppRoutes.localizacaoA: (_) => const LocalizacaoA(),
      },
    );
  }
}
