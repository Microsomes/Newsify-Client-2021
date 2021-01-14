import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

void main() {
  runApp(HomePage());
}


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context){
          return Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Color.fromRGBO(175, 74, 83, 1),

                        child: Column(
                          children: [

                            Container(
                              height: MediaQuery.of(context).size.height*0.20,
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height:  MediaQuery.of(context).size.height*0.20/2.5,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(230, 111, 119, 1),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        child:Center(
                                          child: Row(
                                            children: [
                                              SizedBox(width: 20,),
                                              Text("Newsify Live, Maeplet",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.white
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height:  MediaQuery.of(context).size.height*0.20/2.5,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(230, 111, 119, 1),
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Center(
                                      child: Icon(Icons.sync,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),

                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Newsify is back...",
                                        style: GoogleFonts.b612(
                                            fontSize: 30,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Expanded(
                              child: Container(
                                child:  Transform.rotate(
                                  angle: 25*math.pi/180,
                                  child: Image.asset("assets/map4.png",

                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 10
                      ),
                      color: Color.fromRGBO(175, 74, 83, 1),
                      height: 60,
                      child: Center(
                        child: Container(
                          height: 50,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Container(
                                child: Center(child: Text("Learn More",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold
                                ),
                                )),
                                color: Colors.red,
                              )),
                              Expanded(child: Center(child: Text("Begin Setup",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold
                              ),
                              )),)
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
          );
        },
      ),
    );
  }
}