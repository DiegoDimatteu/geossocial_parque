import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 15, 102, 3),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        height: 40,
        width: 80,
        child: const Center(
            child: Text(
          'Enviar',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
        )),
      ),
      onTap: () {},
    );
  }
}
