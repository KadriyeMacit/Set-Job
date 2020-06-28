import 'dart:math';
import 'package:flutter/material.dart';
import 'board_view.dart';
import 'model.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  double _angle = 0;
  double _current = 0;
  AnimationController _ctrl;
  Animation _ani;
  List<Luck> _items = [
    Luck("vr", Colors.accents[0], "Camgirl"),
    Luck("asistan", Colors.accents[2], "Assistant"),
    Luck("drone", Colors.accents[4], "Courier"),
    Luck("eye", Colors.accents[6], "Spy"),
    Luck("friend", Colors.accents[8], "Virtual Friend"),
    Luck("gamer3", Colors.accents[10], "Gamer"),
    Luck("security", Colors.accents[12], "Security"),
    Luck("tbl", Colors.accents[14], "Author"),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var _duration = Duration(milliseconds: 5000);
    _ctrl = AnimationController(vsync: this, duration: _duration);
    _ani = CurvedAnimation(parent: _ctrl, curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()
      {

      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.deepPurple[700], Colors.red[500]])),
          child: AnimatedBuilder(
              animation: _ani,
              builder: (context, child) {
                final _value = _ani.value;
                final _angle = _value * this._angle;
                return Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    BoardView(items: _items, current: _current, angle: _angle),
                    _buildGo(),
                    _buildResult(_value),
                  ],
                );
              }),
        ),
      ),
    );
  }

  _buildGo() {
    return Material(
      color: Colors.white,
      shape: CircleBorder(),
      child: InkWell(
        customBorder: CircleBorder(),
        child: Container(
          alignment: Alignment.center,
          height: 72,
          width: 72,
          child: Text(
            "GO",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        onTap: _animation,
      ),
    );
  }

  _animation() {
    if (!_ctrl.isAnimating) {
      var _random = Random().nextDouble();
      _angle = 20 + Random().nextInt(5) + _random;
      _ctrl.forward(from: 0.0).then((_) {
        _current = (_current + _random);
        _current = _current - _current ~/ 1;
        _ctrl.reset();
      });
    }
  }

  int _calIndex(value) {
    var _base = (2 * pi / _items.length / 2) / (2 * pi);
    return (((_base + value) % 1) * _items.length).floor();
  }

  _buildResult(_value) {
    var _index = _calIndex(_value * _angle + _current);
    String _asset = _items[_index].asset;
    String _yazi = _items[_index].isim;

    return Stack(
      children: <Widget>[

        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Text(_yazi,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Cyber"
                  ),),

                Image.asset(_asset, height: 80, width: 80),

              ],
            ),
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(right: 30.0, top:40),
          child: Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              backgroundColor: Colors.red[700],
                radius: 20,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(

                      child: Image.asset("asset/image/ss.png"),

                      onTap: (){
                        exit(0);
                      },

                    ),
                  ),
                )
            ),
          ),
        )




      ],

    );
  }
}