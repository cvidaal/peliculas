import 'dart:convert';
import 'pelicula.dart';

class MovieMapper {
    final int pagina;
    final List<Pelicula> resultados;


    MovieMapper({
        required this.pagina,
        required this.resultados,
    });

    factory MovieMapper.fromRawJson(String str) => MovieMapper.fromJson(json.decode(str));

    factory MovieMapper.fromJson(Map<String, dynamic> json) => MovieMapper(
        pagina: json["page"],
        resultados: List<Pelicula>.from(json["results"].map((pelicula) => Pelicula.fromJson(pelicula))),
    );

}
