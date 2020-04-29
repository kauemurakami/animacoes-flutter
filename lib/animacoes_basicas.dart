import 'package:flutter/material.dart';

class AnimacoesBasicas extends StatefulWidget {
  @override
  _AnimacoesBasicasState createState() => _AnimacoesBasicasState();
}

class _AnimacoesBasicasState extends State<AnimacoesBasicas> {

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
        padding: EdgeInsets.all(10),
        height: _status ? 0 : MediaQuery.of(context).size.height / 2,
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
