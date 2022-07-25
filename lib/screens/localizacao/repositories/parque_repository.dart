import 'package:flutter/material.dart';
import 'package:geossocial_parque/model/parque.dart';

class ParquesRepository extends ChangeNotifier {
  final List<Parque> _parques = [
    Parque(
      nome: 'Parque Ecológico Águas Claras',
      endereco: 'Av. das Castanheiras - Águas Claras, Brasília - DF, 72025-065',
      foto:
          'https://imgsapp2.correiobraziliense.com.br/app/noticia_127983242361/2018/12/02/722728/20181201220446300437o.jpg',
      latitude: -15.83594,
      longitude: -48.02521,
    ),
    Parque(
      nome: 'Lago dos Patos',
      endereco: 'Lago dos Patos - Águas Claras, Brasília - DF, 70297-400',
      foto:
          'http://www.ibram.df.gov.br/wp-content/uploads/2018/12/valdeir-aguas-clarasDSC08257.jpg',
      latitude: -15.83168,
      longitude: -48.03003,
    ),
    Parque(
      nome: 'Lagoa dos Patinhos do Parque Águas Claras',
      endereco: 'Lagoa dos Patinhos - Águas Claras, Brasília - DF, 70297-400',
      foto:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw1zLa4mldx7GwcdePro1F3iLaHNkaVbub4yVKt81rYKN_WQy_VW1bviERALy-zbOYa7M&usqp=CAU',
      latitude: -15.83183,
      longitude: -48.02899,
    ),
    Parque(
      nome: 'Administração do Parque de Águas Claras',
      endereco: 'Unnamed Road - Águas Claras, Brasília - DF, 70297-400',
      foto:
          'http://uploads.metropoles.com/wp-content/uploads/2015/09/08135527/banheiros---guas-claras.jpg',
      latitude: -15.82957,
      longitude: -48.02015,
    ),
  ];

  List<Parque> get parques => _parques;
}
