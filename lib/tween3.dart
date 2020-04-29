import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenAnim3 extends StatefulWidget {
  @override
  _TweenAnim3State createState() => _TweenAnim3State();
}

class _TweenAnim3State extends State<TweenAnim3> {

  static final colorTween = ColorTween(begin: Colors.white, end: Colors.pink);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: colorTween,
        child: Image.asset("imgs/estrelas.jpg"),
        duration: Duration(seconds: 2),
        builder: (BuildContext context, Color cor, Widget widget){
          return ColorFiltered(
            colorFilter: ColorFilter.mode(
                cor,
            BlendMode.overlay,
            ),
            child: widget,
          );
        }
    );
  }
}
