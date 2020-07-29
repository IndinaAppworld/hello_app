import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloapp/BlackCherryFont.dart';
import 'package:helloapp/ListViewExample.dart';
import 'package:helloapp/Palette.dart';
import 'package:helloapp/ParentMenuScreen.dart';
import 'Student.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;
import 'common/FontCustomStyle.dart';
import 'common/theme.dart';

class rowcolumlearn extends StatefulWidget {
  rowcolumlearn({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _rowcolumlearn createState() => _rowcolumlearn();
}

class _rowcolumlearn extends State<rowcolumlearn> {

  @override
  Widget build(BuildContext context) {
    // full screen width and height
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

// height without SafeArea
    var padding = MediaQuery
        .of(context)
        .padding;
    double height1 = height - padding.top - padding.bottom;


    final mobileNumberField = TextField(
      obscureText: true,
      style: inputtype_style,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        WhitelistingTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10)
      ], // Only numbers can be entered

      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          hintText: "10 Digit Mobile Number",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
    );


// height without status bar
    double height2 = height - padding.top;

// height without status and toolbar
    double height3 = height - padding.top - kToolbarHeight;

    return MaterialApp(
        title: 'Albarkat School',
        theme: appTheme,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Row Colum Demo'),
            ),

            body: Container(
              color: Colors.red,
              child: Column(

                children: <Widget>[
              new Expanded (
              flex:1,
                child: Container(
              color: Colors.brown,
              child: Row(
                children: <Widget>[

              new Expanded (
              flex:1,
              child: Container(

                color: Colors.amber,
              ),
              ),
                  new Expanded (
                    flex:1,

                    child: Container(

                      color: Colors.red,
                      child: (
                          mobileNumberField
                      ),
                    ),

                  ),



                ],

              ),


                ),
              ),
                  new Expanded (
                    flex:1,
                    child: Container(
                      color: Colors.yellow,

                    ),
                  ),
                  new Expanded (
                    flex:1,
                    child: Container(
                      color: Colors.black,

                    ),
                  )

                ],
              )


            )

        )

    );
  }
}

