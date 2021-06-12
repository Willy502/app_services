import 'package:app_services/src/models/movie_model.dart';
import 'package:flutter/material.dart';

class MovieHorizontalWidget extends StatelessWidget {
  final List<Movie>? movies;

  MovieHorizontalWidget({@required this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      height: _screenSize.height * 0.3,
      child: PageView.builder(
        //pageSnapping: true,
        itemCount: movies!.length,
        itemBuilder: (context, position) => _createCard(movies![position])
      ),
    );
  }

  Widget _createCard(Movie movie) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              placeholder: AssetImage('assets/img/no-image.jpg'),
              image: NetworkImage(''),
              fit: BoxFit.cover,
              height: 160.0
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            movie.title!,
            
          )
        ],
      ),
    );
  }
}