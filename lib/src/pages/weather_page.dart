import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeatherPage extends StatelessWidget {
  final lista = [
    {
      "tiempo": "Wind",
      "valor" : "N 7 mph"
    },
    {
      "tiempo": "Humidity",
      "valor" : "58%"
    },
    {
      "tiempo": "Rain",
      "valor" : "10%"
    },
    {
      "tiempo": "Feels like",
      "valor" : "5°"
    }
  ];

  final List<Map<String,String>> listaTiempo =[
    {
      "hora": "Now",
      "tiempo": "7°",
      "icon": "sun-cloudy.PNG"
    },
    {
      "hora": "11AM",
      "tiempo": "8°",
      "icon": "sun-cloudy.PNG"
    },
    {
      "hora": "12PM",
      "tiempo": "8°",
      "icon": "cloudy.PNG"
    },
    {
      "hora": "1PM",
      "tiempo": "9°",
      "icon": "cloudy.PNG"
    },
    {
      "hora": "1PM",
      "tiempo": "9°",
      "icon": "cloudy.PNG"
    },
    {
      "hora": "2PM",
      "tiempo": "10°",
      "icon": "cloudy.PNG"
    },
    {
      "hora": "3PM",
      "tiempo": "10°",
      "icon": "cloudy.PNG"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffE5F0FC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.06,
            ),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 10.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Icon(
                   Icons.format_align_left
                 ),
                 Text(
                   "Weather",
                   style: TextStyle(
                     fontSize: 20.0,
                     fontWeight: FontWeight.bold
                   ),
                 ),
                 Icon(
                   Icons.notifications_none
                 )
               ],
             ),
           ),
           Row(
             children: [
               SizedBox(
                 width: size.width * 0.36,
               ),
               Text(
                 "Seoul, South Korea",
                 style: TextStyle(
                   fontSize: 12.0,
                   color: Color(0xff8B93AA)
                 ),
               ),
               SizedBox(
                 width: size.width * 0.3,
               ),
             ],
           ),
           SizedBox(
             height: size.height * 0.08,
           ),
           Container(
             width: size.width * 0.6,
             child: Image.asset(
               "assets/clima/weather.png",
               fit: BoxFit.fill,
              )
            ),
           Center(
             child: Text(
               "Partly Cloudy",
               style: TextStyle(
                 color: Color(0xff9FA7BC),
                 fontSize: 14.0
               ),
             ),
           ),
           Row(
             children: [
               SizedBox(
                 width: size.width * 0.41,
               ),
               Text(
                 "7°",
                 style: TextStyle(
                   fontSize: 70.0
                 ),
               ),
             ],
           ),
           SizedBox(
             height: size.height * 0.06,
           ),
            Container(
              width: size.width * 1.0,
              height: size.height * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lista.length,
                itemBuilder: (BuildContext context, int i){
                  return _elementoTiempo(context, lista[i]);
                }
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Tuesday, Today",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              width: size.width * 1.0,
              height: size.height * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaTiempo.length,
                itemBuilder: (BuildContext context, i){
                  return itemClima(context, listaTiempo[i]);
                }
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _elementoTiempo(BuildContext context,Map<String,dynamic> element){
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          width: size.width * 0.4,
          height: size.height * 0.1,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.06,
              ),
              Text(
                element['tiempo'],
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff9FA7BC),
                ),
              ),
              Text(
                element['valor'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemClima(BuildContext context, Map<String,String> clima){
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.17,
      height: size.height * 0.06,
      padding: EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            clima['hora']
          ),
          Container(
            width: size.width * 0.1,
            child: Image.asset(
              "assets/clima/${clima['icon']}",
              fit: BoxFit.fill,
            ),
          ),
          Text(
            clima['tiempo']
          )
        ],
      ),
    );
  }
}