import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppbarHome(),
      body: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuscarWidget(),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListaPeliculasWidget('Ahora en Cines'), // Proximamente
                      ListaPeliculasWidget('Más Populares'),
                      ListaPeliculasWidget('Mejor Valoradas'),
                      ListaPeliculasWidget('Proximamente')
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










