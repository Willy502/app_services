import 'package:app_services/src/shared/preferences.dart';
import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget {

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
    );
  }

  void logout(BuildContext context) {
    preferences.token = '';
    Navigator.pushReplacementNamed(context, 'login');
  }
}