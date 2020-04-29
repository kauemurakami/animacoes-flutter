import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimacoesBasicas3 extends StatefulWidget {
  @override
  _AnimacoesBasicas3State createState() => _AnimacoesBasicas3State();
}

class _AnimacoesBasicas3State extends State<AnimacoesBasicas3> {

  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Meu app'),
      ),
      body: GestureDetector(
        onTap: (){
          setState(() {
            _status = !_status;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.linear,
          alignment: Alignment.center,
          width: _status ? 60 : 160,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30)
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 50),
                  child: Icon(Icons.person_add, color: Colors.white,),
                  opacity: _status ? 1 : 0,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 100),
                  child: Text(
                      "Mensagem",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                  opacity: _status ? 0 : 1,
                ),
              ),
            ],
          ),
        ),
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
