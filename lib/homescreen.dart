import 'package:flutter/material.dart';
import 'package:peliculas/buscarWidget.dart';

import 'screens/ahoraencines.dart';
import 'screens/maspopulares.dart';
import 'screens/mejorvaloradas.dart';
import 'screens/proximamente.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Películas',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        shadowColor: Colors.black, //Color d ela sombra
        elevation: 5, // Sombra
        toolbarHeight: 80, // Alto de la barra de arriba
        actions: [
          //Para poner objetos en la derecha
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.white,
              ))
        ],
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ), //Para poner 1 objeto en la izquierda.
      ),
      body: const Padding(
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
                      MasPopulares(), //Horizontal de más populares
                      SizedBox(
                        height: 10,
                      ),
                      MejorValoradas(),
                      SizedBox(
                        height: 10,
                      ),
                      AhoraEnCines(),
                      SizedBox(
                        height: 10,
                      ),
                      Proximamente()
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








