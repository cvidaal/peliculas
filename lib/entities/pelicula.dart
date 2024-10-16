class Pelicula{
  int idpelicula;
  String titulo;
  bool adultos;
  String? backdropPath;
  List<String> generos;
  String tituloOriginal;
  String sinopsis;
  double popularidad;
  String? posterPath;
  String? fechaLanzamiento;
  bool video;
  double mediaVotos;
  int numVotos;

  Pelicula({
    required this.idpelicula,
    required this.titulo,
    required this.adultos,
    this.backdropPath,
    required this.generos,
    required this.tituloOriginal,
    required this.sinopsis,
    required this.popularidad,
    this.posterPath,
    this.fechaLanzamiento,
    required this.video,
    required this.mediaVotos,
    required this.numVotos
  });

  factory Pelicula.fromJson(Map<String, dynamic> json) {
    return Pelicula(
        adultos: json["adult"],
        backdropPath: json["backdrop_path"],
        generos: List<String>.from(json["genres"].map((genero) => genero.name)),
        idpelicula: json["id"],
        tituloOriginal: json["original_title"],
        sinopsis: json['overview'],
        popularidad: json["popularity"]?.toDouble(),
        posterPath: json["poster_path"],
        fechaLanzamiento: json["release_date"],
        titulo: json["title"],
        video: json["video"],
        mediaVotos: json["vote_average"]?.toDouble(),
        numVotos: json["vote_count"],
    );
}
}