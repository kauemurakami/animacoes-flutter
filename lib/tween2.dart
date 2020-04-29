import 'package:flutter/material.dart';

class TweenAnim2 extends StatefulWidget {
  @override
  _TweenAnim2State createState() => _TweenAnim2State();
}

class _TweenAnim2State extends State<TweenAnim2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 1, end: MediaQuery.of(context).size.width / 2),
          duration: Duration(seconds: 2),
          builder: (BuildContext context, double largura, Widget widget){
            return Container(
              color: Colors.green,
              width: largura,
              height: 60,
            );
          }
      ),
    );
  }
}
