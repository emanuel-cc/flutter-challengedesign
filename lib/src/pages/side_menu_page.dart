import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:side_menu/src/models/layout_model.dart';
import 'package:side_menu/src/routes/routes.dart';

class SideMenuPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final layoutModel = Provider.of<LayoutModel>(context);

    void _closeDrawer() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          layoutModel.currentTitle.toUpperCase(),
          style: TextStyle(
            color: Colors.black
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: _openDrawer,
        ),
        backgroundColor: Colors.white,
      ),
      body: layoutModel.currentList,
      drawer: Container(
        width: size.width * 0.2,
        // height: size.height * 0.8,
        alignment: Alignment.topCenter,
        color: Color(0xff222233), //#90324D color: Color(0xff222233),
        child: Column(
          children: [
            SafeArea(
              child: SizedBox(
                height: size.height * 0.02,
              ),
              bottom: false,
            ),
            GestureDetector(
              onTap: (){
                _closeDrawer();
              },
              child: Container(
                width: size.width * 0.1,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/close.png'
                    )
                  )
                ),
              ),
            ),
            Expanded(
              child: _ListaMenu()
            )
          ],
        )
      )
      // Drawer(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: <Widget>[
      //       SafeArea(
      //         child: SizedBox(
      //           height: size.height * 0.02,
      //         )
      //       ),
      //       Text('This is the Drawer'),
      //       RaisedButton(
      //         onPressed: _closeDrawer,
      //         child: Text('Close Drawer'),
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}

class _ListaMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final layoutModel = Provider.of<LayoutModel>(context);
    final size = MediaQuery.of(context).size;

    void _closeDrawer() {
      Navigator.of(context).pop();
    }

    return ListView.builder(
      // separatorBuilder: (context,i)=>Divider(
      //   color: Color(0xff222233),
      // ),
      itemCount: pageRoutes.length,
      itemBuilder: (BuildContext context, int i){
        return GestureDetector(
          onTap: (){
            layoutModel.currentColor = pageRoutes[i].color;
            layoutModel.currentTitle = pageRoutes[i].titulo;
            layoutModel.currentList = pageRoutes[i].lista;
            _closeDrawer();
          },
          child: Container(
            width: size.width * 0.1,
            height: size.height * 0.1,
            decoration: BoxDecoration(
              // color: Color(0xff90324D), //Color(0xff222233) 0xff90324D
              color: (layoutModel.currentColor == pageRoutes[i].color) ? Color(0xff90324D):Color(0xff222233),
              image: DecorationImage(
                // colorFilter: ColorFilter.mode(Color(0xff90324D), BlendMode),
                image: AssetImage(
                  'assets/${pageRoutes[i].image}'
                )
              )
            ),
            
          ),
        );
      },
    );
  }
}