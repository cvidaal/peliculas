import 'package:flutter/material.dart';
import 'package:peliculas/widgets/portada_widget.dart';

class ListaPeliculasWidget extends StatelessWidget {
  final String titulo;
  const ListaPeliculasWidget(this.titulo, {super.key});

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
                  color: Colors.deepOrange,
                  fontSize: 17,
                ),
              ),
              const Text("Ver todas"),
            ],
          ),
          //! IMPORTANTE SABERSELO
          const SingleChildScrollView(
            //Para que quepan los container y no aparezca el aviso de OVERFLOW
            scrollDirection: Axis.horizontal, //Permite hacer scrollDirection
            child: Row(
              children: [
                PortadaWidget(),
                PortadaWidget(),
                PortadaWidget(),
                PortadaWidget(),
                PortadaWidget(),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
