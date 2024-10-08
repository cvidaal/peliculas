import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class Peliculascreen extends StatelessWidget {
  const Peliculascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarHome(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Center(
              child: Column(
                children: [
                  Text(
                    'Titulo',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'T. Original',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      height: 270,
                      width: 180,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),

                    const Row(
                      children: [
                        Text('4.4', style: TextStyle(fontSize: 22),),
                        SizedBox(width: 10,),
                        Text('1.200', style: TextStyle(fontSize: 22),),
                        SizedBox(width: 10,),
                        Text('90%', style: TextStyle(fontSize: 22),),
                      ],
                    ),
                  ],
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text('120 min'),
                      Text('1990'),
                      Text('Acción Drama Arte')
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
