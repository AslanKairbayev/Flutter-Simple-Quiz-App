import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final count;
  final total;
  final onClearState;

  Result({Key key, this.count, this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;
    Color col;

    if (count >= 0 && count <= 3) {
      msg = '"Hello there!"';
      img = Image.asset('assets/images/obi_wan.png');
      col = Colors.blue;
    } else if (count >= 4 && count <= 7) {
      msg = '"Beep Bloop Blop Bleep Boop!"';
      img = Image.asset('assets/images/r2d2.png');
      col = Colors.grey;
    } else {
      msg = '"Ironic.."';
      img = Image.asset('assets/images/palpatine.png');
      col = Colors.red;
    }

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //       color: Colors.black,
        //       blurRadius: 15,
        //       spreadRadius: 0,
        //       offset: Offset(2, 5)),
        // ],
        borderRadius: BorderRadius.circular(30),
        color: col,
        // gradient: LinearGradient(
        //   colors: [
        //     Color(0XFF5337ff),
        //     Color(0XFF8131ff),
        //     Color(0XFFbd27ff),
        //   ],
        // ),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            'Right answers $count from $total',
          ),
          Divider(
            color: Colors.white,
          ),
          FlatButton(
            onPressed: onClearState,
            child: Text(
              'Again',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
