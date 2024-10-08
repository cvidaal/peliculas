import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class AppbarHome extends StatelessWidget implements PreferredSizeWidget {
  
  const AppbarHome({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text(
          'PELICULAS',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        shadowColor: Colors.black, //Color d ela sombra
        elevation: 5, // Sombra
        actions: const [
          //Para poner objetos en la derecha
          BotonOpciones()
        ],
        leading: const Icon(
          Icons.home_filled,
          color: Colors.white,
          size: 35,
        ), //Para poner 1 objeto en la izquierda.
      );
  }
  
}