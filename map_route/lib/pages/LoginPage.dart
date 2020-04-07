import 'package:map_route/Animations/FadeAnimation.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 30, 59, 1),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(1.2, Text("MapRoute", 
            style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),)),
            
           
            SizedBox(height: 40,),
            FadeAnimation(1.2, Text("Ingresa Con", 
            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
            SizedBox(height: 45,),
            FadeAnimation(1.8, Center(
              
              
            child: Container(
                
                width: 120,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(


                  
                  shape: BoxShape.circle,
                  color: Colors.white,

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0,7),
                      blurRadius: 6.0,
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/google.png'),
                    
                  ),
                  
                ),
                
              ),
            )),
          ],
        ),
      ),
    );
  }
}