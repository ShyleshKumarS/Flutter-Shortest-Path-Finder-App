import 'package:dsa_1/screens/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Center(
                      child: ClipOval(
                          child: Image.asset(
                            "images/welcome.png",
                            scale: 0.8,
                            width: 350, // Adjust the width as needed
                            height: 350, // Adjust the height as needed
                          )
                      )
                  )
              )
            ],),
            Align(
                alignment: Alignment.bottomCenter,
                child:Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.666,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                )
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child:Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.666,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(70)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height:20),
                      Text("Shortest Path Finder",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,

                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal: 40),
                        child:Text("This app provides you the shortest path between two given location (using Djisktras algorithm)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,color: Colors.black.withOpacity(0.7),
                          ),
                        ) ,
                      ),
                      SizedBox(height:60),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Material(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:(context)=>SecondScreen(),),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                              child: Text(
                                "Get Start",
                                style: TextStyle(color: Colors.white), // Set text color
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),


    );
  }
}