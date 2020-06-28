import 'package:flutter/material.dart';
import 'package:setjob/carkifelek/homepage.dart';

class SorularFive extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SorularFive> {


  Color gradientStart = Colors.red[500]; //Change start gradient color here
  Color gradientEnd = Colors.deepPurple[700];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){

      },

      child: Scaffold(


          body: Container(

            decoration: new BoxDecoration(
              gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
                  begin: const FractionalOffset(0.5, 0.0),
                  end: const FractionalOffset(0.0, 0.5),
                  stops: [0.0,1.0],
                  tileMode: TileMode.clamp
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 60, 30, 50),
              child: Container(

                decoration: BoxDecoration(

                  border: Border.all(
                      width: 2
                  ),

                  borderRadius: BorderRadius.all(Radius.circular(10)),

                  gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
                      begin: const FractionalOffset(0.5, 0.0),
                      end: const FractionalOffset(0.0, 0.5),
                      stops: [0.0,1.0],
                      tileMode: TileMode.clamp
                  ),
                ),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.blueAccent
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              "Did you want to jump off the cliff?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Cyber",
                                  color: Colors.white),),
                          ),
                        ),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                        color: Colors.cyan,
                        splashColor: Colors.black,
                        onPressed: (){

                          Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context) => HomePage()),);

                        },
                        child: Center(
                          child: Text("I'm afraid of high",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Cyber",
                              color: Colors.white),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                        color: Colors.cyan,
                        splashColor: Colors.black,
                        onPressed: (){

                          Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context) => HomePage()),);

                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text("I think about it every night",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Cyber",
                                color: Colors.white),),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                        color: Colors.cyan,
                        splashColor: Colors.black,
                        onPressed: (){

                          Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context) => HomePage()),);

                        },
                        child: Center(
                          child: Text("I feel sorry",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Cyber",
                              color: Colors.white),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                        color: Colors.cyan,
                        splashColor: Colors.black,
                        onPressed: (){

                          Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context) => HomePage()),);

                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text("No, this can't be an option",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Cyber",
                                color: Colors.white),),
                          ),
                        ),
                      ),
                    )




                  ],

                ),
              ),
            ),
          )


      ),
    );
  }

}