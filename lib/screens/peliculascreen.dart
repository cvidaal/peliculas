import 'package:flutter/material.dart';
import 'package:peliculas/entities/pelicula.dart';
import 'package:peliculas/widgets/actores_widget.dart';
import 'package:peliculas/widgets/widgets.dart';

class Peliculascreen extends StatelessWidget {
  const Peliculascreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Pelicula pelicula =
        ModalRoute.of(context)!.settings.arguments as Pelicula;

    return Scaffold(
      appBar: const AppbarHome(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      pelicula.titulo,
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      pelicula.tituloOriginal,
                      style: const TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        height: 270,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://image.tmdb.org/t/p/w500/${pelicula.posterPath}'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            pelicula.mediaVotos.toString(),
                            style: const TextStyle(fontSize: 22),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            pelicula.numVotos.toString(),
                            style: const TextStyle(fontSize: 22),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            pelicula.popularidad.toString(),
                            style: const TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.home),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.home),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.home),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.home),
                          ],
                        ),
                        const Text(
                          '120 min',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          pelicula.fechaLanzamiento.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          pelicula.generos.map((e) => e,).toString(),
                          style: const TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sinopsis',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                     pelicula.sinopsis, style: const TextStyle(fontSize: 17),)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const _ActorWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class _ActorWidget extends StatelessWidget {
  const _ActorWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Actores',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ActoresWidget(
                nombre: 'Bruce',
              ),
              ActoresWidget(nombre: 'Bruce'),
              ActoresWidget(nombre: 'Bruce'),
              ActoresWidget(nombre: 'Bruce'),
              ActoresWidget(nombre: 'Bruce'),
            ],
          ),
        )
      ],
    );
  }
}
