import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Designs"
        ),
        backgroundColor: Color(0xff068AD7),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: SizedBox(
                  height: size.height * 0.1,
                )
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'sidemenu');
                },
                child: Container(
                  width: size.width * 0.93,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff068AD7),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.06,
                      ),
                      Container(
                        width: size.width * 0.47,
                        child: Row(
                          children: [
                            Text(
                              "Side Menu",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.white
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'fabcircmenu');
                },
                child: Container(
                  width: size.width * 0.93,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xff068AD7),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.06,
                      ),
                      Container(
                        width: size.width * 0.47,
                        // color: Colors.blueAccent,
                        child: Row(
                          children: [
                            Text(
                              "Fab Circular Menu",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Icon(
                              Icons.fiber_smart_record,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'weather');
                },
                child: Container(
                  width: size.width * 0.93,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xff068AD7),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.06,
                      ),
                      Container(
                        width: size.width * 0.47,
                        // color: Colors.blueAccent,
                        child: Row(
                          children: [
                            Text(
                              "Weather",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Icon(
                              Icons.wb_sunny_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'foodmenu');
                },
                child: Container(
                  width: size.width * 0.93,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xff068AD7),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.06,
                      ),
                      Container(
                        width: size.width * 0.47,
                        // color: Colors.blueAccent,
                        child: Row(
                          children: [
                            Text(
                              "Food / Drink Menu",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Icon(
                              Icons.food_bank_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}