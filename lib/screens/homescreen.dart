import 'package:flutter/material.dart';
import 'package:peliculas/entities/pelicula.dart';
import 'package:peliculas/providers/pelicula_providers.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    context.read<PeliculaProviders>();
  }
  @override
  Widget build(BuildContext context) {

       final List<Pelicula> peliculas = context.read<PeliculaProviders>().populares;
       final List<Pelicula> peliculasEnCines = context.read<PeliculaProviders>().nowPlaying;
       final List<Pelicula> peliculasTopRated = context.read<PeliculaProviders>().toprated;
       final List<Pelicula> peliculasUpComing = context.read<PeliculaProviders>().upcoming;

    return  Scaffold(
      appBar: const AppbarHome(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const BuscarWidget(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListaPeliculasWidget('Ahora en Cines', peliculasEnCines), // Proximamente
                      ListaPeliculasWidget('Proximamente', peliculasUpComing),
                      ListaPeliculasWidget('Más Populares', peliculas),
                      ListaPeliculasWidget('Mejor Valoradas', peliculasTopRated),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}










