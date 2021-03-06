import 'package:flutter/material.dart';

class DrinkDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width * 1.0,
              height: size.height * 0.5,
              color: Color(0xffCE520F),
            )
          ],
        ),
      )
    );
  }
}