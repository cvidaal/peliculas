import 'package:flutter/material.dart';
import 'package:peliculas/entities/pelicula.dart';

class PortadaWidget extends StatelessWidget {
  final Pelicula pelicula;
  
  const PortadaWidget(
    this.pelicula,
    {super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 10, 10),
        
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GestureDetector( // Sirve para ahcer clicable cualquier widget
            onTap: (){
              Navigator.pushNamed(context, 'peliculascreen', arguments: pelicula);
            },
            child: Container(
              height: 180,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500/${pelicula.posterPath}'),
                    fit: BoxFit.cover
                  ),
                ),
              ),
          ),
        ),
        
      ),
            ],
    );
  }
}