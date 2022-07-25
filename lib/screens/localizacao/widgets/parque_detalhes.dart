import 'package:flutter/material.dart';
import 'package:geossocial_parque/model/parque.dart';

class ParqueDetalhes extends StatelessWidget {
  final Parque parque;
  const ParqueDetalhes({Key? key, required this.parque}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Image.network(parque.foto,
            height: 250,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 24),
          child: Text(
            parque.nome,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60, left: 24),
          child: Text(
            parque.endereco,
          ),
        ),
      ],
    );
  }
}
