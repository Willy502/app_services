import 'dart:async';

import 'package:app_services/src/models/movie_model.dart';

class MoviesProvider {

  List<Movie> _populares = [];

  final _popularesStreanController = StreamController<List<Movie>>.broadcast();

  Stream<List<Movie>> get popularesStream => _popularesStreanController.stream;

  void disposeStreams() {
    _popularesStreanController.close();
  }

}