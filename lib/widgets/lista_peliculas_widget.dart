import 'package:flutter/material.dart';
import 'package:peliculas/widgets/portada_widget.dart';

import '../entities/pelicula.dart';

class ListaPeliculasWidget extends StatelessWidget {
  final String titulo;
    final List<Pelicula> peliculas;
  
  const ListaPeliculasWidget(this.titulo, this.peliculas, {super.key, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titulo,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: 17,
                ),
              ),
              TextButton(
                onPressed: (){},
                child: const Text("Ver todas", style: TextStyle(fontSize: 16, color: Colors.black54),)),
            ],
          ),
          //! IMPORTANTE SABERSELO
          SingleChildScrollView(
            //Para que quepan los container y no aparezca el aviso de OVERFLOW
            scrollDirection: Axis.horizontal, //Permite hacer scrollDirection
            child: Row(
              children: peliculas.isNotEmpty
                    ? peliculas
                        .map((pelicula) => PortadaWidget(pelicula)).toList()
                    : [const Text('No hay peliculas disponibles')]),
            ),
        ]
      )
    );
      
  }
}
