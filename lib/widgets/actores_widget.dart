import 'package:flutter/material.dart';

class ActoresWidget extends StatelessWidget {
  final String nombre;
  const ActoresWidget({required this.nombre, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ Container(
        margin: const EdgeInsets.only(right: 8),
        height: 180,
        width: 120,
        decoration: const BoxDecoration(
          color: Colors.grey,
        ), 
      ),
      Text(nombre)
    ]);
  }
}