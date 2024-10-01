import 'package:flutter/material.dart';

class Proximamente extends StatelessWidget {
  const Proximamente({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Próximamente",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                    fontSize: 18),
              ),
              Text("Ver todas"),
            ],
          ),
          //! IMPORTANTE SABERSELO
          SingleChildScrollView(
            //Para que quepan los container y no aparezca el aviso de OVERFLOW
            scrollDirection: Axis.horizontal, //Permite hacer scrollDirection
            child: Row(
              children: [
                Container(
                  height: 180,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 180,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 180,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 180,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}