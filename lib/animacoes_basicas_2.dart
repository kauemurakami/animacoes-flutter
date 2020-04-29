import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimacoesBasicas2 extends StatefulWidget {
  @override
  _AnimacoesBasicas2State createState() => _AnimacoesBasicas2State();
}

class _AnimacoesBasicas2State extends State<AnimacoesBasicas2> {

  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Meu app'),
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        color: Colors.green,
        padding: EdgeInsets.only(bottom: 10, top: 20),
        alignment: _status ? Alignment.bottomCenter: Alignment.topCenter,
        child: AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: _status ? 1 : 0,
          child:  Container(
            height: 50,
            child: Icon(
              Icons.airplanemode_active,
              color: Colors.white,
              size: 50,
            ),
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(Icons.add_box),
        onPressed: (){
          setState(() {
            _status = !_status;
          });
        },
      ),
    );
  }
}
