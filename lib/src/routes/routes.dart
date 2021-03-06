import 'package:flutter/material.dart';
import 'package:side_menu/src/widgets/lista_music.dart';
import 'package:side_menu/src/widgets/lista_films.dart';

final pageRoutes = <_Route>[
  _Route(
    'Music',
    'music.png',
    ListaMusic(),
    Color(0xff90324D)
  ),
  _Route(
    'Films',
    'films.png',
    ListaFilms(),
    Color(0xff222233)
  )
];


class _Route{
  final Widget lista;
  final String titulo;
  final String image;
  final Color color;

  _Route(
    this.titulo,
    this.image,
    this.lista,
    this.color
  );
}