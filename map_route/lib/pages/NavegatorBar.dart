import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


import 'package:map_route/pages/PageCreateEvent.dart';
import 'package:map_route/pages/PageCreateRoute.dart';
import 'package:map_route/pages/PageMap.dart';
import 'package:map_route/pages/PageNotification.dart';
import 'package:map_route/pages/PageUser.dart';


class NavegatorBar extends StatefulWidget {
  @override
  _NavegatorBarState createState() => _NavegatorBarState();
}

class _NavegatorBarState extends State<NavegatorBar> {


  int pageIndex = 0;

  
final PageMap _listMap = PageMap();
  final PageUser _listUser = PageUser();
  final PageCreateRoute _listCreateRoute = PageCreateRoute();
  final PageCreateEvent _listCreateEvent = PageCreateEvent();
  final PageNotification _listNotification = PageNotification();

  Widget _showPage = new  PageMap();

  Widget _pageChooser(int page){
    switch (page){
      case 0:
      return _listMap;
      break;
      case 1:
      return _listCreateEvent;
      break;
      case 2:
      return _listCreateRoute;
      break;
      case 3:
      return _listNotification;
      break;
      case 4:
      return _listUser;
      break;
      default: 
      return new Container(

        child: new Center(
          child: new Text('No ha seleccionado', 
          style: new TextStyle(fontSize: 20),
          ),  
        ),
      );
    }
  }
  
 

  @override
  Widget build(BuildContext context) {
    var curvedNavigationBar = CurvedNavigationBar(

          items: <Widget>[
            Icon(Icons.map, size: 30),
            Icon(Icons.add, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.notifications, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,    
          backgroundColor: Color.fromRGBO(7, 30, 59, 1),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        );
    return Scaffold(
        bottomNavigationBar: curvedNavigationBar,
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _showPage,
          ),
        ));
  }
}