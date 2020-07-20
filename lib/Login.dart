import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloapp/BlackCherryFont.dart';
import 'package:helloapp/ListViewExample.dart';
import 'package:helloapp/Palette.dart';
import 'Student.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;


//https://www.youtube.com/watch?v=1Y6o1DOUJcU
class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

addStringToSF(String key,String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}



class _LoginPageState extends State<Login> {

  TextStyle style = TextStyle(fontFamily: 'BlackCherryFont', fontSize: 18.0);
  TextStyle lbl_style = TextStyle(fontFamily: 'BlackCherryFont', fontSize: 15.0);
  TextStyle inputtype_style = TextStyle(fontFamily: 'BlackCherryFont', fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    final grNumberField = TextField(
      obscureText: false,
      style: inputtype_style,
      keyboardType: TextInputType.text,
      inputFormatters: <TextInputFormatter>[
        LengthLimitingTextInputFormatter(10)
      ],
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          hintText: "Enter G.R Number",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
    );
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
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Palette.primaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {


          developer.log(""+grNumberField.controller.text);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ListViewExample()),
          );

        },
        child: Text("Submit",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontFamily: 'BlackCherryFont')),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Palette.primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 70.0,
                  child: Image.asset(
                    "assets/images/albarkaat_log.png",
                    fit: BoxFit.contain,
                  ),
                ),
            SizedBox(
              height: 10.0),
                Padding(
                  padding: const EdgeInsets.all(0.0),

                  child: Container
                    (
                      decoration: BoxDecoration(
                          color: Palette.whileColor,
                          shape: BoxShape.rectangle,
//                          borderRadius: BorderRadius.only(
//                              topLeft: Radius.circular(25.0),
//                              bottomRight: Radius.circular(25.0))
                      
                      borderRadius: BorderRadius.all(Radius.circular(15))

                      )
                      
                      ,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                        child: Column
                          (
                            children: <Widget>[

                            Text("LOGIN",
                            textAlign: TextAlign.center,style: style.copyWith(color: Palette.primaryColor,fontFamily: 'BlackCherryFont',fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.0),

                              Row(
                              children:<Widget>[
                              Text("GR No",
                                textAlign: TextAlign.left,style: style.copyWith(color: Palette.primaryColor),),
                              ],),

                                  SizedBox(height: 5.0),
                              grNumberField,
                            SizedBox(height: 10.0),
                              Row(
                                children:<Widget>[
                                  Text("Mobile No",
                                    textAlign: TextAlign.left,style: style.copyWith(color: Palette.primaryColor),),
                                ],),
                              SizedBox(height: 5.0),
                              mobileNumberField,
                            SizedBox(
                              height: 15.0,
                            ),
                            loginButon,
                              ]



                        ),
                      ),



                  ),
                )
                ,


                Row(
                  children:<Widget>[

                    Spacer(),
                    Text("Forgot/ Reset Mobile No",
                      textAlign: TextAlign.left,style: style.copyWith(color: Palette.whileColor),),



                  ],),

                SizedBox(
                  height: 15.0,
                ),
                Spacer(),
                SizedBox(
                  height: 190.0,
                  child: Image.asset(
                    "assets/images/wordcloud2.png",
                    fit: BoxFit.contain,
                  ),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}