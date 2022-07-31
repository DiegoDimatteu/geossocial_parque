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
    Parque(
      nome: 'Quadra de esporte do Parque de Águas Claras',
      endereco:
          'Estr. Interna do Parque Águas Claras - Águas Claras, Brasília - DF, 70297-400',
      foto:
          'https://media-cdn.tripadvisor.com/media/photo-s/08/ea/f6/80/parque-ecologico-de-aguas.jpg',
      latitude: -15.82945,
      longitude: -48.02141,
    ),
    Parque(
      nome: 'Calistenia Parque de Águas Claras',
      endereco: 'Águas Claras, Brasília - DF, 70297-400',
      foto:
          'http://agendacapital.com.br/wp-content/uploads/2019/04/40557322213_923592bbf9_o.jpg',
      latitude: -15.82911,
      longitude: -48.02184,
    ),
    Parque(
      nome: 'Pista de Caminhada',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto:
          'https://www.elmoengenharia.com.br/static/arquivos/parque-de-aguas-claras-o-verde-no-centro-da-cidade2-8126319.jpg',
      latitude: -15.829255,
      longitude: -48.022541,
    ),
    Parque(
      nome: 'Arco de Bambu',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto:
          'https://fastly.4sqi.net/img/general/600x600/DNFT3TGDIDKDZCJHDOYRBOVOE4HF0WH2FXFN3N5FCHUOPPSX.jpg',
      latitude: -15.836133,
      longitude: -48.024862,
    ),
    Parque(
      nome: 'Parquinho de Areia',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto: 'https://mapio.net/images-p/14097759.jpg',
      latitude: -15.829383,
      longitude: -48.020418,
    ),
    Parque(
      nome: 'Entrada Principal',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto:
          'https://i0.wp.com/www.eldogomes.com.br/wp-content/uploads/2022/06/214DC486-6CC9-429F-9962-F44205767659.jpeg?fit=674%2C455&ssl=1',
      latitude: -15.837099,
      longitude: -48.025025,
    ),
    Parque(
      nome: 'Campo de Grama',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto:
          'https://upload.wikimedia.org/wikipedia/commons/e/e9/Parque_de_%C3%81guas_Claras.jpg',
      latitude: -15.833651,
      longitude: -48.029034,
    ),
    Parque(
      nome: 'Canto da Capivara',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto:
          'https://midias.correiobraziliense.com.br/_midias/jpg/2022/01/03/675x450/1_03012022mf31-7283022.jpg?20220103174205?20220103174205',
      latitude: -15.830928,
      longitude: -48.030403,
    ),
    Parque(
      nome: 'Pista de Caminhada',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto:
          'https://uploads.metropoles.com/wp-content/uploads/2017/04/06155045/Parque.jpg',
      latitude: -15.833640,
      longitude: -48.026786,
    ),
    Parque(
      nome: 'Pista de Caminhada',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto:
          'https://media-cdn.tripadvisor.com/media/photo-s/0b/6d/cc/fe/parque-aguas-claras.jpg',
      latitude: -15.830169,
      longitude: -48.021191,
    ),
    Parque(
      nome: 'Pista de Caminhada',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto:
          'https://bonissimocom.files.wordpress.com/2018/04/parque-aguas-claras-3.jpg?w=900&h=506&crop=1',
      latitude: -15.834399,
      longitude: -48.022904,
    ),
    Parque(
      nome: 'Ponte do Córrego',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto:
          'https://s2.glbimg.com/gYprfPAa4Bi9i-ttiLRftrWtVnE=/0x0:1700x1065/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/w/W/O4unALRNGUKXsiJMH4qg/parque-aguas-claras.jpg',
      latitude: -15.836779,
      longitude: -48.023015,
    ),
    Parque(
      nome: 'Visão Panorâmica',
      endereco: 'Águas Claras, Brasília - DF, (Sem endereço)',
      foto: 'https://s03.video.glbimg.com/x216/4183722.jpg',
      latitude: -15.833159,
      longitude: -48.023328,
    ),
    Parque(
      nome: 'Entrada Principal do Cortado',
      endereco: 'Taguatinga, Brasília - DF, 70297-400',
      foto:
          'https://s2.glbimg.com/UqegOpEkDaXwSHXu14vwGmoUzpc=/0x0:2048x1365/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/8/g/bTRVbAQzucwYsyQwK2JA/47607009732-948fe56c40-k.jpg',
      latitude: -15.812373,
      longitude: -48.078892,
    ),
    Parque(
      nome: 'Mirante de Madeira',
      endereco: 'Taguatinga, Brasília - DF, 70297-400',
      foto: 'https://fuja.com.br/wp-content/uploads/2022/03/cortado05.jpg',
      latitude: -15.812959,
      longitude: -48.077688,
    ),
    Parque(
      nome: 'Cascata do Cortado',
      endereco: 'Taguatinga, Brasília - DF, 70297-400',
      foto:
          'https://uploads.metropoles.com/wp-content/uploads/2015/10/17180051/150815RF_Cachoeiras-Lago-do-Cortado006.jpg',
      latitude: -15.814003,
      longitude: -48.076509,
    ),
    Parque(
      nome: 'Entrada de Automóveis Principal',
      endereco: 'Taguaparque - Taguatinga, Brasília - DF, 70297-400',
      foto:
          'https://uploads.metropoles.com/wp-content/uploads/2016/04/24084302/taguaparque.jpg',
      latitude: -15.818628,
      longitude: -48.056775,
    ),
    Parque(
      nome: 'Parque Infântil',
      endereco: 'Taguaparque - Taguatinga, Brasília - DF, 70297-400',
      foto:
          'https://media-cdn.tripadvisor.com/media/photo-s/07/53/6d/46/taguaparque.jpg',
      latitude: -15.819588,
      longitude: -48.056507,
    ),
  ];

  List<Parque> get parques => _parques;
}
