import 'package:flutter/material.dart';
import 'package:template1/resources/assets.dart';

class ScrollPage extends StatelessWidget {

  final PageController _pageControl = PageController(
    initialPage: 0,
    viewportFraction: 1
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(135, 234, 187, 1),
      body: PageView(
        controller: _pageControl,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _createPageOne(),
          _createPageTwo()
        ],
      ),
    );
  }

  Widget _createPageOne() {
    return  Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromRGBO(108, 192, 218, 1),
          ),
          Image(image: assetScrollImage,fit: BoxFit.cover,height: double.infinity,),
          _createRow(),
        ],
    );
  }

  Widget _createRow() {
    return SafeArea(
          child: Column(
        
        children: <Widget>[
          Text('11º',style: TextStyle(fontSize: 64, color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          Text('Miercoles',style: TextStyle(fontSize: 64, color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          Expanded(child: SizedBox()),
          IconButton(
            iconSize: 94,
            icon: Icon(Icons.keyboard_arrow_down,), 
            color: Colors.white,
            onPressed: (){
              print("tab");
              _pageControl.animateToPage(1, duration: Duration(milliseconds: 900), curve: Curves.easeIn);
            }
          )
        ],
      ),
    );
  }

  Widget _createPageTwo() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1),
      child: Center(
        child: RaisedButton(
          padding: EdgeInsets.all(20),
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text("Bienvenido",style: TextStyle(fontSize: 24),),
          onPressed: (){
            _pageControl.animateToPage(0, duration: Duration(milliseconds: 900), curve: Curves.easeIn);

          },
        ),
      ),
    );
  }
}