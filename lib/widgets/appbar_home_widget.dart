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
          'FilmFinder',
          style: TextStyle(
             color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500,),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        shadowColor: Colors.black, //Color d ela sombra // Sombra
        actions: const [
          //Para poner objetos en la derecha
          BotonOpciones()
        ],
        leading: IconButton(
          onPressed: () {
              Navigator.pushNamed(context, 'homescreen');
          },
          icon: const Icon(
            Icons.home_max_rounded,
            color: Colors.white,
            size: 35,
            ),
          )
        ); //Para poner 1 objeto en la izquierda
  }
  
}