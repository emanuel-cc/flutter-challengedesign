import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/rendering.dart';
import 'package:animate_do/animate_do.dart';

class FabCircularMenuPage extends StatefulWidget {
  @override
  _FabCircularMenuPageState createState() => _FabCircularMenuPageState();
}

class _FabCircularMenuPageState extends State<FabCircularMenuPage> with TickerProviderStateMixin {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  AnimationController animateController;
  Animation<double> moverIzquierda;
  Animation<double> moverDerecha;

  @override
  void initState() {
    super.initState();
    animateController = AnimationController(duration: Duration(milliseconds: 500),vsync: this );
    moverIzquierda = Tween(begin: 0.0,end: -600.0).animate(animateController);
    moverDerecha = Tween(begin: 0.0, end: 600.0).animate(animateController);
    animateController.addListener(() { 
      print("Status: ${animateController.status}");
      if(animateController.status == AnimationStatus.completed){
        animateController.reverse();
      }
    });
  }

  List<Map<String,dynamic>> items = [
    {
      "hora": "8",
      "tiempo": "AM",
      "actividad": "Finish Home Screen",
      "tipo": "Web App"
    },
    {
      "hora": "11",
      "tiempo": "AM",
      "actividad": "Lunch Break",
      "tipo": ""
    },
    {
      "hora": "2",
      "tiempo": "PM",
      "actividad": "Design Stand up",
      "tipo": "Hangouts"
    }
  ];
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      //#3FA2E5
      body: AnimatedBuilder(
        animation: animateController,
        builder: (context, child){
          return Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: size.height * 0.3,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff3F6BAB),
                                  Color(0xff3270B9),

                                  Color(0xff297CC8),

                                  Color(0xff2682CD),

                                  Color(0xff2A7EC8),

                                  Color(0xff257BC8),

                                  Color(0xff2978C3),

                                  Color(0xff277DC8),

                                  Color(0xff336DB7)
                                ]
                              )
                            ),
                          ),
                          Container(
                            height: size.height * 0.7,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/puente.png',
                                )
                              )
                            ),
                            
                          ),
                        ],
                      ),
                      Container(
                        height: size.height * 1.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomLeft,
                            colors: [
                              Colors.grey.withOpacity(0.1),
                              Colors.black.withOpacity(0.7)
                            ],
                            stops: [
                              0.0,
                              1.0
                            ]
                          )
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
              Positioned(
                top: size.height * 0.06,
                left: size.width * 0.04,
                child: Icon(
                  Icons.menu,
                  color: Color(0xff4E527C)
                )
              ),
              Positioned(
                top: size.height * 0.06,
                right: size.width * 0.04,
                child: Icon(
                  Icons.search,
                  color: Color(0xff4E527C)
                )
              ),
              Positioned(
                top: size.height * 0.14,
                left: size.width * 0.04,
                child: Transform.translate(
                  offset: Offset(moverIzquierda.value, 0.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monday", //#F5F5F5 90919C
                        style: TextStyle(
                          color: Color(0xffF5F5F5), // icono del sol #535575
                          fontSize: 30.0
                        ),
                      ),
                      Text(
                        "Febrary 6, 2015", //#858694
                        style: TextStyle(
                          color: Color(0xff505273),
                          fontSize: 13.0
                        ),
                      )
                    ],
                  ),
                )
              ),
              Positioned(
                top: size.height * 0.14,
                right: size.width * 0.04,
                child: Transform.translate(
                  offset: Offset(moverDerecha.value, 0.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.wb_sunny_outlined,
                            color: Color(0xff535575),
                            size: 30.0,
                          ),
                          Text(
                            "58°", //#F5F5F5 90919C
                            style: TextStyle(
                              color: Color(0xffF5F5F5), // icono del sol #535575
                              fontSize: 30.0
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "San Francisco", //#858694
                        style: TextStyle(
                          color: Color(0xff505273),
                          fontSize: 13.0
                        ),
                      )
                    ],
                  ),
                )
              ),
              Positioned(
                top: size.height * 0.35,
                left: size.width * 0.04,
                child: Container(
                  width: size.width * 0.8,
                  height: size.height * 0.7,
                  child: ListView.builder(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) { 
                      return Transform.translate(
                        offset: Offset(moverDerecha.value, 0.0),
                        child: elementos(items[index]));
                    },
                  ),
                )
              )
            ],
          );
        },
      ),
      floatingActionButton: FabCircularMenu(
        key: fabKey,
        // fabSize: 70.0, // Tamaño del fab menu
        fabColor: Color(0xffA32242),
        fabOpenIcon: Icon(
          Icons.add,
          color: Colors.white,
          size: 35.0,
        ),
        fabCloseIcon: Icon(
          Icons.close,
          color: Colors.white,
          size: 35.0,
        ),
        // fabCloseColor: Color(0xff8B243F),
        fabOpenColor: Color(0xff8E2440),
        ringWidth: 200.0,
        // ringDiameter: 400.0,
        fabElevation: 0.0,
        ringColor: Color(0xffA32242),
        // fabMargin: EdgeInsets.only(left: 20.0),
        children: [
          IconButton(
            icon: Icon(
              Icons.alarm,
              color: Colors.white,
              size: 35.0,
            ), 
            onPressed: (){
              if(fabKey.currentState.isOpen) {
                animateController.forward();
                fabKey.currentState.close();
              } else {
                fabKey.currentState.open();
              }
            }
          ),
          IconButton(
            icon: Icon(
              Icons.chat,
              color: Colors.white,
              size: 35.0,
            ), 
            onPressed: (){
              if(fabKey.currentState.isOpen) {
                animateController.forward();
                fabKey.currentState.close();
              } else {
                fabKey.currentState.open();
              }
            }
          ),
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.white,
              size: 35.0,
            ), 
            onPressed: (){
              if(fabKey.currentState.isOpen) {
                animateController.forward();
                fabKey.currentState.close();
              } else {
                fabKey.currentState.open();
              }
            }
          ),
        ],
      ),
    );
  }

  Widget elementos (Map<String,dynamic> item){
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.7,
      height: size.height * 0.1,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['hora'].toString(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xffF5F5F5)
                ),
              ),
              Text(
                item['tiempo'].toString(),
                style: TextStyle(
                  fontSize: 8.0,
                  color: Colors.white //Color(0xff505273)
                ),
              ),

            ],
          ),
          SizedBox(
            width: size.width * 0.2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['actividad'].toString(),
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xffF5F5F5)
                ),
              ),
              Text(
                item['tipo'].toString(),
                style: TextStyle(
                  fontSize: 8.0,
                  color: Colors.white//Color(0xff505273)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  
}

