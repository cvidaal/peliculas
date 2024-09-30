import 'package:flutter/material.dart';
import 'package:peliculas/buscarWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.orange,
        shadowColor: Colors.black, //Color d ela sombra
        elevation: 5, // Sombra
        toolbarHeight: 80, // Alto de la barra de arriba
        actions: [ //Para poner objetos en la derecha
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.more_vert, size: 30,))
        ],
      leading: const Icon(Icons.home)     , //Para poner 1 objeto en la izquierda. 
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const BuscarWidget(),
        
              const SizedBox(height: 10,),
        
              Container(child: const Text('Elemento1, mucho mas largo que el primero', style: TextStyle(fontSize: 20),),
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.orange
              ),
              ),
              const SizedBox(height: 10,),
        
              Container(child: const Text('Elemento2',style: TextStyle(fontSize: 20),),
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.purple
              ),),
              const SizedBox(height: 10,),
        
              Container(child: const Text('Elemento3', style: TextStyle(fontSize: 20),),
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.blue
              ),),
            ],
          ),
        ),
      ),
    );
  }
}