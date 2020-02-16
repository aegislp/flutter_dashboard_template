import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:template1/resources/colors.dart';


class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child:  Column(
              children: <Widget>[
                _colorcarText(),
                _colocarBotnoes(),

              ],
            ) ,
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            color_g_1,
            color_g_2
          ]
        ),
      ),
    );


    final cajarosada = Transform.rotate(
      angle: - pi/5,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0)
          ]),
        ),
    )
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajarosada,
        ),

      ],
    );
  }

  Widget _colorcarText() {


    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[ 
            Text("Clasify Transaction",style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,), 
            Text("Clasify this transaction into a parcticular category",style: TextStyle(fontSize: 18, color: Colors.white),),

          ],
          
        ),
      )
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
      
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color:Color.fromRGBO(116, 117, 152, 1.0))
          
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined),
            title: Container()
          ),BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container()
          )
        ]
      ),
    );
  }

  Widget _colocarBotnoes() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Icons.center_focus_weak,'General',Colors.lightBlue),
            _crearBotonRedondeado(Icons.directions_bus,'Transport',Colors.purple)
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Icons.store_mall_directory,'Shoping',Colors.pink),
            _crearBotonRedondeado(Icons.filter_frames,'Bills',Colors.orange)
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Icons.movie,'Entertaiment',Colors.blue),
            _crearBotonRedondeado(Icons.fastfood,'Grosery',Colors.lightGreen)
          ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(IconData iconButton, String name, MaterialColor color) {
    return   ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
            height: 180.0,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color.fromRGBO(62, 66, 107, 0.7)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius:35.0,
                  backgroundColor: color,
                  child: Icon(iconButton,color: Colors.white,size: 30,)
                ),
                Text(name,style: TextStyle(color: color,fontSize: 18,fontWeight: FontWeight.w500),)
              ],
            ),
          
        ),
      ),
    );
  }
}