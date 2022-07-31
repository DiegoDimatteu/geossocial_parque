import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geossocial_parque/screens/localizacao/localizacao_a.dart';
import 'package:geossocial_parque/screens/localizacao/repositories/parque_repository.dart';
import 'package:geossocial_parque/screens/localizacao/widgets/parque_detalhes.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ParquesController extends ChangeNotifier {
  double lat = 0.0;
  double long = 0.0;
  String erro = '';
  Set<Marker> markers = <Marker>{};
  late GoogleMapController _mapsController;

  get mapsController => _mapsController;

  onMapCreated(GoogleMapController gmc) async {
    _mapsController = gmc;
    getPosicao();
    loadParques();
  }

  loadParques() async {
    final parques = ParquesRepository().parques;
    for (var parque in parques) {
      markers.add(
        Marker(
          markerId: MarkerId(parque.nome),
          position: LatLng(parque.latitude, parque.longitude),
          icon: await BitmapDescriptor.fromAssetImage(
              const ImageConfiguration(), 'assets/image/arvore.png'),
          /* icon: await BitmapDescriptor.fromAssetImage(
              const ImageConfiguration(), 'assets/image/logoM.png'), */
          onTap: () => {
            showModalBottomSheet(
              context: appKey.currentState!.context,
              builder: (context) => ParqueDetalhes(parque: parque),
            )
          },
        ),
      );
    }
    notifyListeners();
  }

  getPosicao() async {
    try {
      Position posicao = await _posicaoAtual();
      lat = posicao.latitude;
      long = posicao.longitude;
      _mapsController.animateCamera(CameraUpdate.newLatLng(LatLng(lat, long)));
    } catch (e) {
      erro = e.toString();
    }
    notifyListeners();
  }

  Future<Position> _posicaoAtual() async {
    LocationPermission permissao;

    bool ativado = await Geolocator.isLocationServiceEnabled();
    if (!ativado) {
      return Future.error('Por favor, habilite a localização no smartphone');
    }

    permissao = await Geolocator.checkPermission();
    if (permissao == LocationPermission.denied) {
      permissao = await Geolocator.requestPermission();
      if (permissao == LocationPermission.denied) {
        return Future.error('Você precisa autorizar o acesso à localização');
      }
    }

    if (permissao == LocationPermission.deniedForever) {
      return Future.error('Você precisa autorizar o acesso à localização');
    }

    return await Geolocator.getCurrentPosition();
  }
}
