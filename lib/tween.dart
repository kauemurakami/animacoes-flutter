import 'package:flutter/material.dart';

class TweenAnim extends StatefulWidget {
  @override
  _TweenAnimState createState() => _TweenAnimState();
}

class _TweenAnimState extends State<TweenAnim> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 6.28),
          duration: Duration(seconds: 2),
          builder: (BuildContext context, double angulo, Widget widget){
            return Transform.rotate(
              angle: angulo,
              child: Image.asset("imgs/logo.png"),
            );
          }
      ),
    );

  }
}
