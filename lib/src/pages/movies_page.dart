import 'package:app_services/src/providers/movies_provider.dart';
import 'package:app_services/src/shared/preferences.dart';
import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget {
  final moviesProvider = MoviesProvider();
  final preferences = Preferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        actions: [
          IconButton(onPressed: () => logout(context), icon: Icon(Icons.logout))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text('Popular Movies'),
          _movies(),
          Divider(),
          Text('Top Rated')
        ],
      ),
    );
  }

  void logout(BuildContext context) {
    preferences.token = '';
    Navigator.pushReplacementNamed(context, 'login');
  }

  Widget _movies() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 5.0),
          StreamBuilder(
            stream: moviesProvider.popularesStream,
            builder: (BuildContext context, AsyncSnapshot snapshot) {

              if (snapshot.hasData) {
                return Container(); // Aqui estará la funcionalidad
              } else {
                return Center(child: CircularProgressIndicator());
              }

            }
          )
        ],
      ),
    );
  }
}