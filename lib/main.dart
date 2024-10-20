import 'package:flutter/material.dart';
import 'package:peliculas/providers/pelicula_providers.dart';
import 'package:peliculas/screens/homescreen.dart';
import 'package:peliculas/screens/peliculascreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PeliculaProviders())],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FilmFinder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        'peliculascreen': (context) => const Peliculascreen(),
        'homescreen': (context) => const HomeScreen(),
      },
    ),
    );
  }
}

