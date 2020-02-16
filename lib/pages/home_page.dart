import 'package:flutter/material.dart';
import 'package:template1/resources/assets.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            _createImage(context),
            SafeArea(
                          child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: Column(
                  children: <Widget>[
                    _createInfo(context),
                    SizedBox(height: 30.0,),
                    _createActions(context),
                    SizedBox(height: 30.0,),
                    Text("""The lake is fed through a series of mountain creeks and drains underground. The water then resurfaces as the Oeschibach. Part of it is captured for electricity production and as water supply for Kandersteg. In observations from 1931 to 1965, the elevation of the lake surface varied between 1,566.09 metres (5,138.1 ft) and 1,581.9 metres (5,190 ft). The average seasonal variation was 12.2 metres (40 ft) (September/April).
The lake is generally frozen during five months, from December to May. From time to time ice skating is possible on the ice.""", textAlign: TextAlign.justify,),
                   SizedBox(height: 10.0,) ,
                  Text("""The lake is fed through a series of mountain creeks and drains underground. The water then resurfaces as the Oeschibach. Part of it is captured for electricity production and as water supply for Kandersteg. In observations from 1931 to 1965, the elevation of the lake surface varied between 1,566.09 metres (5,138.1 ft) and 1,581.9 metres (5,190 ft). The average seasonal variation was 12.2 metres (40 ft) (September/April).
The lake is generally frozen during five months, from December to May. From time to time ice skating is possible on the ice.""",textAlign: TextAlign.justify,),
                  Text("""The lake is fed through a series of mountain creeks and drains underground. The water then resurfaces as the Oeschibach. Part of it is captured for electricity production and as water supply for Kandersteg. In observations from 1931 to 1965, the elevation of the lake surface varied between 1,566.09 metres (5,138.1 ft) and 1,581.9 metres (5,190 ft). The average seasonal variation was 12.2 metres (40 ft) (September/April).
The lake is generally frozen during five months, from December to May. From time to time ice skating is possible on the ice.""",textAlign: TextAlign.justify,),
                  Text("""The lake is fed through a series of mountain creeks and drains underground. The water then resurfaces as the Oeschibach. Part of it is captured for electricity production and as water supply for Kandersteg. In observations from 1931 to 1965, the elevation of the lake surface varied between 1,566.09 metres (5,138.1 ft) and 1,581.9 metres (5,190 ft). The average seasonal variation was 12.2 metres (40 ft) (September/April).
The lake is generally frozen during five months, from December to May. From time to time ice skating is possible on the ice.""",textAlign: TextAlign.justify,),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  Widget _createImage(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return FadeInImage(
      placeholder: assetLoading, 
      image: NetworkImage('https://sp-images.summitpost.org/574120.JPG?auto=format&fit=max&h=800&ixlib=php-2.1.1&q=35&s=60031552580b00bb3de39b2d2f1ebf6c'),
      fit: BoxFit.cover,
      height: screenSize.height * 0.35,
      width: double.infinity
    );
  }

  Widget  _createInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Oeschinen lake campgroup",style: Theme.of(context).textTheme.title, textAlign: TextAlign.left,),
            SizedBox(height: 10.0),
            Text("Kandersten Switzerland",style: Theme.of(context).textTheme.subhead,textAlign: TextAlign.left,),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(Icons.star,color: Colors.redAccent,),
            Text('41')
          ],
        )
      ],
    );
 }

  Widget _createActions(BuildContext context) {

    final TextStyle textStyle =  new TextStyle(color: Colors.blue, fontSize: 18,fontWeight: FontWeight.bold);
    return   Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.phone,color: Colors.blue),
              SizedBox(height: 10.0,),
              Text('CALL',style: textStyle,),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.near_me,color: Colors.blue),
              SizedBox(height: 10.0,),
              Text('ROUTE',style: textStyle,),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.share,color: Colors.blue,),
              SizedBox(height: 10.0,),
              Text('SHARE',style: textStyle,),
            ],
          )
        ],
      );
    

  }
}