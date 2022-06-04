import 'package:flutter/material.dart';

class DotsHome extends StatelessWidget {
  final int currentIndex;
  final double position;

  Color getColor(int index) {
    return index == currentIndex
        ? const Color.fromRGBO(235, 242, 250, 1)
        : Colors.white38;
  }

  const DotsHome({Key? key, required this.currentIndex, required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: position,
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration:
                BoxDecoration(color: getColor(0), shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 8,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration:
                BoxDecoration(color: getColor(1), shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 8,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration:
                BoxDecoration(color: getColor(2), shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}
