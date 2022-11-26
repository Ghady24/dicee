import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(child: Text('Dicee')),
        backgroundColor: Colors.red,
      ),
      body: Diceeapp(),
    ),
  ));
}

class Diceeapp extends StatefulWidget {
  @override
  _DiceeappState createState() => _DiceeappState();
}

class _DiceeappState extends State<Diceeapp> {
   int dicenum=1 ;
  int change_dice_num(){
    dicenum = Random().nextInt(6)+1;
    return dicenum;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dicenum = change_dice_num();
                });
              },
              child: Image.asset('images/inverted-dice-$dicenum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
