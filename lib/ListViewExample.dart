import 'package:flutter/material.dart';
import 'package:helloapp/BlackCherryFont.dart';
import 'package:helloapp/Palette.dart';
import 'Student.dart';


//https://www.youtube.com/watch?v=1Y6o1DOUJcU
class ListViewExample extends StatefulWidget {
  ListViewExample({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListViewExample> {

  final List<Student> nameList=[

    Student("Haris Shaikh","Male","10th","B","19,990"),
    Student("Saqib Shaikh","Male","15th","C","10,990"),
    Student("Mahira Shaikh","Female","Nurseray","A","8,000"),
    Student("Haris Shaikh","Male","10th","B","19,990"),
    Student("Saqib Shaikh","Male","15th","C","10,990"),
    Student("Mahira Shaikh","Female","Nurseray","A","8,000"),
    Student("Haris Shaikh","Male","10th","B","19,990"),
    Student("Saqib Shaikh","Male","15th","C","10,990"),
    Student("Mahira Shaikh","Female","Nurseray","A","8,000"),
    Student("Haris Shaikh","Male","10th","B","19,990"),
    Student("Saqib Shaikh","Male","15th","C","10,990"),
    Student("Mahira Shaikh","Female","Nurseray","A","8,000"),
    Student("Haris Shaikh","Male","10th","B","19,990"),
    Student("Saqib Shaikh","Male","15th","C","10,990"),
    Student("Mahira Shaikh","Female","Nurseray","A","8,000"),
    Student("Haris Shaikh","Male","10th","B","19,990"),
    Student("Saqib Shaikh","Male","15th","C","10,990"),
    Student("Mahira Shaikh","Female","Nurseray","A","8,000"),



  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.primaryColor,
      child:new ListView.builder(
          itemCount:nameList.length,itemBuilder:(BuildContext context,int index)=>myCard(context,index)
    )

    );
  }
  void onTapped(int index) {
    // navigate to the next screen.

  }
  showAlertDialog(BuildContext context,int index) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Simple Alert"),
      content: Text(""+nameList[index].NAME),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );



  }


    Widget myCard(BuildContext context, int index)
  {
    final Student student=nameList[index];
      return GestureDetector(
        child: new Container(

          child: Card(
            color: Palette.greenLand,
            child: Padding(
              padding: const EdgeInsets.only(top:15,bottom: 15,left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Row(
                    children:<Widget>[
                Text(student.NAME.toString(),
                  style: new TextStyle(fontSize: 20, fontFamily: 'BlackCherryFont'),),
                      Spacer()
              ]
          ),

                  Row(children:<Widget>[

                  Text(student.GENDER.toString())
    ]
                  ),
                  Row(
                    children:<Widget>[
                    Text(student.CLASS.toString()),
                      Spacer(),
                      Text(student.DIV.toString()),
                        ]
                  ),
                  Row(children: <Widget>[
                  Text(student.FEES.toString())
                      ])

                ]
              ),
            ),
          ),
        ),
          onTap: () => showAlertDialog(context,index)

      );
  }
}
