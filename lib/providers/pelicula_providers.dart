import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:peliculas/entities/movie_mapper.dart';
import '../entities/pelicula.dart';
import 'package:http/http.dart' as http;

class PeliculaProviders extends ChangeNotifier{
  final String _apiKey = '0a3cda24fc4be70b9595650fd6d8666f';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';
  
  List<Pelicula> populares = [];
  List<Pelicula> nowPlaying = [];
  List<Pelicula> toprated = [];
  List<Pelicula> upcoming = [];
  
  PeliculaProviders(){
    getPopulares();
    ahoraCines();
    topRated();
    upComing();
  }

  Future<String> _getJsonData(String endpoint, int page) async{
    final url = Uri.https(_baseUrl, endpoint,
      {
        'api_key': _apiKey,
        'language': _language,
        'page' : '$page'
      }
    );

    final response = await http.get(url);
    return response.body;
  }

  getPopulares() async{
    final jsonData = await _getJsonData('3/movie/popular', 1);
    final popularesRespuesta = MovieMapper.fromJson(jsonDecode(jsonData));
    populares = popularesRespuesta.resultados;
    notifyListeners();
  }
  ahoraCines() async{
    final jsonData = await _getJsonData('3/movie/now_playing', 1);
    final popularesRespuesta = MovieMapper.fromJson(jsonDecode(jsonData));
    nowPlaying = popularesRespuesta.resultados;
    notifyListeners();
  }
  topRated() async{
    final jsonData = await _getJsonData('3/movie/top_rated', 1);
    final popularesRespuesta = MovieMapper.fromJson(jsonDecode(jsonData));
    toprated = popularesRespuesta.resultados;
    notifyListeners();
  }
  upComing() async{
    final jsonData = await _getJsonData('3/movie/upcoming', 1);
    final popularesRespuesta = MovieMapper.fromJson(jsonDecode(jsonData));
    upcoming = popularesRespuesta.resultados;
    notifyListeners();
  }
}