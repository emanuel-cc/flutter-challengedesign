import 'package:flutter/material.dart';

class ListaMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Container(
          width: size.width * 0.9,
          height: size.height * 0.3,
          alignment: Alignment.center,
          color: Color(0xffA87C26),
          child: Column(
            children: [
              Image.asset(
                'assets/jazz_music.png',
                width: size.width * 0.4,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Jazz".toUpperCase(),
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
          color: Color(0xff13B0A5),
          child: Column(
            children: [
              Image.asset(
                'assets/rock_music.png',
                width: size.width * 0.4,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Rock".toUpperCase(),
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
          color: Colors.pink[300],
          child: Column(
            children: [
              Image.asset(
                'assets/salsa_music.png',
                width: size.width * 0.4,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Salsa".toUpperCase(),
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