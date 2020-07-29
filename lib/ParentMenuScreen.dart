import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloapp/BlackCherryFont.dart';
import 'package:helloapp/ListViewExample.dart';
import 'package:helloapp/Palette.dart';
import 'package:helloapp/ParentMenuScreen.dart';
import 'package:helloapp/StudentAttendance.dart';
import 'package:helloapp/animation/ScaleRoute.dart';
import 'Student.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;
import 'common/FontCustomStyle.dart';
import 'common/theme.dart';

class ParentMenuScreen extends StatefulWidget {
  ParentMenuScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ParentMenuScreenState createState() => _ParentMenuScreenState();
}

class _ParentMenuScreenState extends State<ParentMenuScreen> {

  @override
  Widget build(BuildContext context) {


    // full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

// height without SafeArea
    var padding = MediaQuery.of(context).padding;
    double height1 = height - padding.top - padding.bottom;

// height without status bar
    double height2 = height - padding.top;

// height without status and toolbar
    double height3 = height - padding.top - kToolbarHeight;

    return MaterialApp(
      title: 'Albarkat School',
      theme: appTheme,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Albarkat School'),
            leading: IconButton(
              icon: Image.asset('assets/images/hamenu.png'),
              onPressed: () { },
            ),
          ),

          body: Container(

            color: Colors.black54,
    child: Column(
          children: <Widget>[
          Container(
            color: Palette.primaryColor,//_colorFromHex('#C9766E') ,
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              height: height3,
              child: Column
                (
                  children:<Widget> [

                    CarouselSlider(
                      options: CarouselOptions(
                          height:  height3*0.35,
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
                    Row
                      (

                      children: <Widget>[

                        new Expanded (
                            flex:1,
                            child:
                            Container
                              (
                                color: Palette.primaryColor,
                                height: height3-height3*0.35,
                                child: Column(

                                  children: [

                                    new Expanded (
                                      flex:1,
                                      child:Container(
                                        color: Palette.menuColor1,

                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: InkWell(
                                            onTap: (){

//                                            Navigator.push(
//                                                context, ScaleRoute(builder: (context) => StudentAttendance()));
                                              Navigator.push(context, ScaleRoute(page: StudentAttendance()));


                                            }, // handle your onTap here
                                            child: Stack(
                                                children: <Widget>[
                                                  Column(
                                                    children: <Widget>[

                                                      Spacer(),
                                                      Image.asset('assets/images/calendar.png',width: 70,alignment: Alignment.center),
                                                      Spacer(),
                                                      Align(alignment: Alignment.bottomCenter, child:

                                                      Text("View Attendance",      style:menu_item.copyWith(color: Colors.white),
                                                      ),),



                                                    ],
                                                  )]),
                                          ),
                                        ),
                                      ),
                                    ),
                                    new Expanded (
                                      flex:1,
                                      child:Container(
                                        color: Palette.menuColor2,

                                        child: Padding(
                                          padding: const EdgeInsets.all(10),


                                          child: InkWell(
                                            onTap: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => StudentAttendance()),
                                              );
                                            },
                                            child: Stack(
                                                children: <Widget>[
                                                  Column(
                                                    children: <Widget>[

                                                      Spacer(),
                                                      Image.asset('assets/images/lmsnew.png',width: 70,alignment: Alignment.center),
                                                      Spacer(),
                                                      Align(alignment: Alignment.bottomCenter, child:

                                                      Text("Messages",      style:menu_item.copyWith(color: Colors.white),
                                                      ),),



                                                    ],
                                                  )]),
                                          ),





                                        ),
                                      ),
                                    ),
                                    new Expanded (
                                      flex:1,
                                      child:Container(
                                        color: Palette.menuColor3,

                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Stack(
                                              children: <Widget>[
                                                Column(
                                                  children: <Widget>[

                                                    Spacer(),
                                                    Image.asset('assets/images/notificationc .png',width: 70,alignment: Alignment.center),
                                                    Spacer(),
                                                    Align(alignment: Alignment.bottomCenter, child:

                                                    Text("Announcement",      style:menu_item.copyWith(color: Colors.white),
                                                    ),),



                                                  ],
                                                )]),
                                        ),
                                      ),
                                    ),

                                  ],
                                )

                            )),
                        new Expanded (
                          flex:1,

                          child:
                        Container
                     (
                            color: Palette.primaryColor,
                            height: height3-height3*0.35,
                            child: Column(

                              children: [

                                new Expanded (
                                  flex:1,
                                  child:Container(
                                    color: Palette.menuColor4,

                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Stack(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[

                                                Spacer(),
                                                Image.asset('assets/images/attendadnce.png',width: 70,alignment: Alignment.center),
                                                Spacer(),
                                                Align(alignment: Alignment.bottomCenter, child:

                                                Text("Home Work",      style:menu_item.copyWith(color: Colors.white),
                                                ),),



                                              ],
                                            )]),
                                    ),
                                  ),
                                ),
                                new Expanded (
                                  flex:1,
                                  child:Container(
                                    child: Column(

                                    children: [

                                      new Expanded (
                                      flex:1,
                                      child:Container(
                                        color: Palette.menuColor5,

                                          child: Row(
                                              children: [
                                                Image.asset('assets/images/policies.png',width: 70,alignment: Alignment.center),
                                                Align(alignment: Alignment.center, child:Text("Report Card",      style:menu_item.copyWith(color: Colors.white),
                                                ),)

                                              ]
                                          )

                                      )

                                      ),
                                      new Expanded (
                                          flex:1,
                                          child:Container(
                                            color: Palette.menuColor1,


                                              child: Row(
                                                  children: [
                                                    Image.asset('assets/images/myapprovalss.png',width: 70,alignment: Alignment.center),
                                                    Align(alignment: Alignment.center, child:Text("Fess Status",      style:menu_item.copyWith(color: Colors.white),
                                                    ),)

                                                  ]
                                              )


                                          )

                                      )



                                    ],





                                    ),








                                  ),
                                ),
                                new Expanded (
                                  flex:1,
                                  child:Container(
                                    color: Colors.brown,

                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Stack(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[

                                                Spacer(),
                                                Image.asset('assets/images/logout.png',width: 70,alignment: Alignment.center),
                                                Spacer(),
                                                Align(alignment: Alignment.bottomCenter, child:

                                                Text("Logout",      style:menu_item.copyWith(color: Colors.white),
                                                ),),

                                              ],
                                            )]),
                                    ),
                                  ),
                                ),

                              ],
                            )

                        ))

                      ],

                    ),

                ]

              ),

          )
    ],)
//          child: Column(
//      children: <Widget>[
//
//        Container(
//            color: Palette.primaryColor,//_colorFromHex('#C9766E') ,
//            padding: EdgeInsets.fromLTRB(0,0,0,0),
//            child:Column(
//
//                children:<Widget> [
//
//                  CarouselSlider(
//                    options: CarouselOptions(
//                        height:  MediaQuery.of(context).size.height*0.30,
//
//                        autoPlay: true),
//
//
//                    items: [1,2,3].map((i) {
//                      return Builder(
//                        builder: (BuildContext context) {
//                          return Container(
//                            width: MediaQuery.of(context).size.width,
//                            margin: EdgeInsets.symmetric(horizontal: 0.0),
//                            decoration: BoxDecoration(
//                                color: Colors.amber
//                            ),
//                            child: Image.asset('assets/images/banner$i.jpg',width: MediaQuery.of(context).size.width,alignment: Alignment.center,
//                              fit: BoxFit.fill,
//                            ),
//                          );
//                        },
//                      );
//                    }).toList(),
//                  )
//
//
//                  ,
//                  Container(
//                    color: Palette.blueSkyLight,
//                    child: Column(
//
//                      children: [
////                        Expanded(
////                          child: Container(
////                              color: Colors.brown,
////                              child: Row(
////
////                                  children: [
////                                    Expanded(
////
////
////                                        child:  Stack(
////
////                                          children: <Widget>[
////
////                                            Align(alignment: Alignment.center, child:
////                                            Image.asset('assets/images/attendadnce.png',width: 80,alignment: Alignment.center,
////
////                                            )
////                                              ,),
////                                            Align(alignment: Alignment.bottomCenter, child:
////
////                                            Text("View Attendance",      style: TextStyle(fontSize: 17,fontFamily: 'BlackCherryFont',color: Colors.white),
////                                            ),),
////                                          ],
////
////
////
////                                        )
////
////                                    ),
////                                    Expanded(
////
////
////                                        child:  Stack(
////                                          children: <Widget>[
////                                            Align(alignment: Alignment.center, child:
////                                            Image.asset('assets/images/attendadnce.png',width: 80,alignment: Alignment.center,
////
////                                            )
////                                              ,),
////                                            Align(alignment: Alignment.bottomCenter, child:
////
////                                            Text("View Attendance",      style: TextStyle(fontSize: 17,fontFamily: 'BlackCherryFont',color: Colors.white),
////                                            ),),
////                                          ],
////
////
////
////
////                                        )
////
////                                    ),
////
////
////                                  ]
////
////
////                              )
////
////                          ),
////
////                        ),
//                        Expanded(
//                            child: Container(
//                              color: Colors.red,
//
//                            )
//                        ),
//                        Expanded(
//                            child: Container(
//                              color: Colors.black54,
//
//                            )
//                        ),
//                        Expanded(
//                            child: Container(
//                              color: Colors.white,
//                            )
//                        ),
//                      ],
//                    ),
//
//
//
//
//
//                  )
//
//
//                ])
//        ),
//
//
//        ]),
    )),
      ) ,
      );



  }
}

