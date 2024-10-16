import 'dart:convert';
import 'pelicula.dart';

class Populares {
    final int pagina;
    final List<Pelicula> resultados;


    Populares({
        required this.pagina,
        required this.resultados,
    });

    factory Populares.fromRawJson(String str) => Populares.fromJson(json.decode(str));

    factory Populares.fromJson(Map<String, dynamic> json) => Populares(
        pagina: json["page"],
        resultados: List<Pelicula>.from(json["results"].map((pelicula) => Pelicula.fromJson(pelicula))),
    );

}
