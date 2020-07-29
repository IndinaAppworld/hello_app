import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:helloapp/BlackCherryFont.dart';
import 'package:helloapp/Palette.dart';
import 'package:flutter_progress_dialog/flutter_progress_dialog.dart';
import 'package:helloapp/rowcolumlearn.dart';

import 'ListViewExample.dart';
import 'Login.dart';
import 'common/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: appTheme,
      home: Login(title: appTitle),
    );

    return MaterialApp(

    title: 'FriendlyChat',
    theme: appTheme,
    home: Scaffold(
    appBar: AppBar(
    title: Text('FriendlyChat'),
    ),
    ),
    );
  }
}

//final appTheme = ThemeData(
//  primarySwatch: Colors.yellow,
//  textTheme: TextTheme(
//    headline1: TextStyle(
//      fontFamily: 'Corben',
//      fontWeight: FontWeight.w700,
//      fontSize: 24,
//      color: Colors.black,
//    ),
//  ),
//);


//class MyHomePage extends StatelessWidget {
//  final String title;
//  final _imageUrls = [
//    "https://png.pngtree.com/thumb_back/fw800/back_pic/00/03/35/09561e11143119b.jpg",
//    "https://png.pngtree.com/thumb_back/fw800/back_pic/04/61/87/28586f2eec77c26.jpg",
//    "https://png.pngtree.com/thumb_back/fh260/back_pic/04/29/70/37583fdf6f4050d.jpg",
//    "   "
//  ];
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//      body: (
//
////          CarouselSlider(
////            options: CarouselOptions(height:  MediaQuery.of(context).size.height),
////            items: [1,2,3,4,5].map((i) {
////              return Builder(
////                builder: (BuildContext context) {
////                  return Container(
////                      width: MediaQuery.of(context).size.width,
////                      margin: EdgeInsets.symmetric(horizontal: 5.0),
////                      decoration: BoxDecoration(
////                          color: Colors.amber
////                      ),
////                      child: Text('text $i', style: TextStyle(fontSize: 16.0),)
////                  );
////                },
////              );
////            }).toList(),
////          )
//
//          Container(
//              color: Palette.primaryColor,//_colorFromHex('#C9766E') ,
//              padding: EdgeInsets.fromLTRB(0,5,0,5),
//              child:Row(
//
//            children: [
////              Container(
////                color: Colors.blue,
////                height: 50.0,
////                width: 50.0,
////              ),
////              Icon(Icons.adjust, size: 50.0, color: Colors.pink),
////              Icon(Icons.adjust, size: 50.0, color: Colors.purple,),
////              Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent,),
////              Container(
////                color: Colors.orange,
////                height: 50.0,
////                width: 50.0,
////              ),
//
//              Image.asset('assets/images/hamenu.png',width:30,
//
//              ),
//
//              Padding(
//                padding: EdgeInsets.all(30),
//                child: Image.asset('https://googleflutter.com/sample_image.jpg'),
//              ),
//              new Expanded(
//
//             child:   Image.asset('assets/images/albarkaat_logo_header.jpg',width: 250,alignment: Alignment.center,
//
//                )
//
//              ),
//              Image.asset('assets/images/hamenu.png',width:30,
//
//              ),
//            ],
//          )
//
//)
//
//
//
//      ),
//      drawer: Drawer(
//        // Add a ListView to the drawer. This ensures the user can scroll
//        // through the options in the drawer if there isn't enough vertical
//        // space to fit everything.
//        child: ListView(
//          // Important: Remove any padding from the ListView.
//          padding: EdgeInsets.zero,
//          children: <Widget>[
//            DrawerHeader(
//              child: Text('Drawer Header'),
//              decoration: BoxDecoration(
//                color: Colors.blue,
//              ),
//            ),
//            ListTile(
//              title: Text('Item 1'),
//              onTap: () {
//                // Update the state of the app
//                // ...
//                // Then close the drawer
//                Navigator.pop(context);
//              },
//            ),
//            ListTile(
//              title: Text('Item 2'),
//              onTap: () {
//                // Update the state of the app
//                // ...
//                // Then close the drawer
//                Navigator.pop(context);
//              },
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
        color: Palette.primaryColor,//_colorFromHex('#C9766E') ,
              padding: EdgeInsets.fromLTRB(0,5,0,5),
              height: MediaQuery.of(context).size.height*0.10,
              child:Container(
                child: Row(
                children: [
//              Container(
//                color: Colors.blue,
//                height: 50.0,
//                width: 50.0,
//              ),
//              Icon(Icons.adjust, size: 50.0, color: Colors.pink),
//              Icon(Icons.adjust, size: 50.0, color: Colors.purple,),
//              Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent,),
//              Container(
//                color: Colors.orange,
//                height: 50.0,
//                width: 50.0,
//              ),

                Image.asset('assets/images/hamenu.png',width:30,

                ),

//              Padding(
//                padding: EdgeInsets.all(30),
//                child: Image.asset('https://googleflutter.com/sample_image.jpg'),
//              ),
                new Expanded(

             child:   Image.asset('assets/images/albarkaat_logo_header.jpg',width: 250,alignment: Alignment.center,

                  )

                ),
                Image.asset('assets/images/hamenu.png',width:30,

                ),
            ],
          ),
              )



          ),
          Container(
              color: Palette.primaryColor,//_colorFromHex('#C9766E') ,
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              child:Column(

                children:<Widget> [

          CarouselSlider(
            options: CarouselOptions(
                height:  MediaQuery.of(context).size.height*0.30,

            autoPlay: true),


            items: [1,2,3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 0.0),
                      decoration: BoxDecoration(
                          color: Colors.amber
                      ),
                      child: Image.asset('assets/images/banner$i.jpg',width: MediaQuery.of(context).size.width,alignment: Alignment.center,
        fit: BoxFit.fill,
                      ),
                  );
                },
              );
            }).toList(),
          )


        ,
                      Container(
                        color: Palette.primaryColor,
                        height: MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height*0.30+MediaQuery.of(context).size.height*0.10),
                        child: Column(

                          children: [
                            Expanded(
                                child: Container(
                                  color: Colors.brown,
                                    child: Row(

                                      children: [
                                    Expanded(


                                    child:  Stack(

                                      children: <Widget>[

    Align(alignment: Alignment.center, child:
                                        Image.asset('assets/images/attendance.png',width: 100,alignment: Alignment.center,

                                        )
                                          ,),
                                        Align(alignment: Alignment.bottomCenter, child:

                                        Text("View Attendance",      style: TextStyle(fontSize: 17,fontFamily: 'BlackCherryFont',color: Colors.white),
                                        ),),
                                      ],



                                    )

                                    ),
                                        Expanded(


                                            child:  Stack(
                                              children: <Widget>[
                                                Align(alignment: Alignment.center, child:
                                                Image.asset('assets/images/attendance.png',width: 100,alignment: Alignment.center,

                                                )
                                                  ,),
                                                Align(alignment: Alignment.bottomCenter, child:

                                                Text("View Attendance",      style: TextStyle(fontSize: 17,fontFamily: 'BlackCherryFont',color: Colors.white),
                                                ),),
                                              ],




                                            )

                                        ),


                                      ]


                                    )

                                ),

                            ),
                            Expanded(
                                child: Container(
                                  color: Colors.red,


                                )
                            ),
                            Expanded(
                                child: Container(
                                  color: Colors.blueGrey,
                                )
                            ),
                          ],
                        ),





                      )


          ])
          ),


        ]
    );
  }
}

