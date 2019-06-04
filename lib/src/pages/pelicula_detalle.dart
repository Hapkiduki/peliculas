import 'package:flutter/material.dart';
import 'package:peliculas/src/models/pelicula_model.dart';

class PeliculaDetalle extends StatelessWidget {
  //PeliculaDetalle(this.pelicula);

  @override
  Widget build(BuildContext context) {
    final Pelicula pelicula = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body:  CustomScrollView(
        slivers: <Widget>[
          _crearAppbar( pelicula ),
        ],
      ),
    );
  }

  Widget _crearAppbar( Pelicula pelicula ){
      return SliverAppBar(
        elevation: 2.0,
        backgroundColor: Colors.blueGrey,
        expandedHeight: 200.0,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text(pelicula.title),
        ),
      );
  }
}
