import 'package:flutter/material.dart';

class FoodDrinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Beer",
          style: TextStyle(
            color: Color(0xff909394)
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color(0xffF3F3F3),
      ),
    );
  }
}