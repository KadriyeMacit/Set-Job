import 'package:flutter/material.dart';

import 'carkifelek/homepage.dart';
import 'sorular/sorular_one.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Anasayfa()
    );
  }
}

class Anasayfa extends StatelessWidget{

  Color gradientStart = Colors.deepPurple[700]; //Change start gradient color here
  Color gradientEnd = Colors.red[500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: new BoxDecoration(
          gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(0.0, 0.5),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[


              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 50),
                child: Container(

                  child: Image.asset("asset/image/logoo.png",
                    height: 300,
                  ),
                ),
              ),
              
              
              
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
                child: Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),

                  child: Text("We choose the right profession for you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Cyber"
                  ),),


                ),
              ),




              Padding(
                padding: const EdgeInsets.symmetric(horizontal:50.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                  color: Colors.cyan,
                  splashColor: Colors.pinkAccent[200],
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) => Sorular()),);
                  },
                  child: Text("Start", style: TextStyle(
                      fontFamily: "Cyber",
                      color: Colors.white),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }




}

