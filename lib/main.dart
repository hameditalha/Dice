import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
void main() {
  runApp(Dice());
}

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Dice',
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('Dice',
            style: TextStyle(
              color: HexColor('#34A0A4'),
              fontWeight: FontWeight.bold
            ),
          ),
        centerTitle: true,
        backgroundColor: Colors.black87,
        shadowColor: HexColor('#34A0A4'),
      ),
      body: DiceFace(),
     ), 
    );
  }
}

class DiceFace extends StatefulWidget {
  @override
  _DiceFaceState createState() => _DiceFaceState();
}

class _DiceFaceState extends State<DiceFace> {
  var f1 = 1;
  var f2 = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Image.asset('images/d$f1.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Image.asset('images/d$f2.png'),
                ),
              ),
            ], 
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
              onPressed: (){
                setState(() {
                  f1 = randDice();
                  f2 = randDice();
                });
              },
              child: Text('Roll',
              style: TextStyle(
                fontSize: 18,
                ),
                ),
              textColor: HexColor('#34A0A4'),
              ),
              FlatButton(
              onPressed: (){
                setState(() {
                  f1 = 1;
                  f2 = 1;
                });
              },
              child: Text('Reset',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
              textColor: HexColor('#34A0A4'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

int randDice() => Random().nextInt(6)+1;