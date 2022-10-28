import 'dart:convert';

import 'package:appmoovies/models/now_playing_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '989a2db2f7b4efee818f3ffd0af082f3';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  MoviesProvider() {
    print('MoviesProvider started');

    this.getonDisplayMovies();
  }

  getonDisplayMovies() async {
    var url = Uri.http(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    print(nowPlayingResponse.results[1].title);
  }
}
