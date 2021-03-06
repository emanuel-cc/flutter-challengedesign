import 'package:flutter/material.dart';

class ListaFilms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Container(
          width: size.width * 0.9,
          height: size.height * 0.3,
          alignment: Alignment.center,
          color: Color(0xff885F7F),
          child: Column(
            children: [
              Image.asset(
                'assets/western_film.png',
                width: size.width * 0.4,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Western".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width * 0.9,
          height: size.height * 0.3,
          alignment: Alignment.center,
          color: Color(0xffD0C490),
          child: Column(
            children: [
              Image.asset(
                'assets/fantasy_film.png',
                width: size.width * 0.4,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Fantasy".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width * 0.9,
          height: size.height * 0.3,
          alignment: Alignment.center,
          color: Colors.red[600],
          child: Column(
            children: [
              Image.asset(
                'assets/love_film.png',
                width: size.width * 0.4,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Love".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}