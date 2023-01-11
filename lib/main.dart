import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:infozyn/non%20tech.dart';
import 'package:infozyn/tech.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _value =1;
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: DefaultTabController(
    length: 2,
    child: Scaffold(
    appBar: AppBar(

      title: Text('INFOZYN',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,fontSize: 30),),


    ),
      body: Material(
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Container(
            child: Column(
              children: [
                Material(
                  elevation: 5,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.indigo[300],
                      borderRadius: BorderRadius.circular(0.0)
                    ),
                     child: TabBar(
                      indicator: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blueAccent[200],
                      ),

                    tabs: [
                    Tab(text: 'Techinal',),
                      Tab(text: 'Non-techinal',),

                  ],
                  ),

                  ),

                ),


                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DecoratedBox(

                                  decoration: ShapeDecoration(

                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width:0.5, style: BorderStyle.solid, color: Colors.grey),

                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                  ),
                                  child:  SizedBox(
                                    height: 40,
                                    width: 160,
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration.collapsed(hintText: ''),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),

                                        //elevation: 5,
                                        style: TextStyle(color: Colors.black),

                                        items: <String>[
                                          '2011-2012','2012-2013','2013-2014','2014-2015','2015-2016',
                                        ].map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        hint: Text(
                                          "2011-2012",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        onChanged: (value) {
                                          setState(() {

                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),


                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Row(
                              children: [
                                Radio(value: 1, groupValue: _value, onChanged: (value) {
                                  setState(() {
                                    _value = 1;
                                  });
                                },
                                ),
                                SizedBox(width: 10,),
                                Text('Odd',style: TextStyle(fontSize: 18),)
                              ],
                            ),
                            Row(
                              children: [
                                Radio(value: 2, groupValue: _value, onChanged: (value) {
                                  setState(() {
                                    _value = 2;
                                  });
                                },
                                ),
                                SizedBox(width: 10,),
                                Text('Even',style: TextStyle(fontSize: 18),)
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                  Expanded(child: TabBarView(children: [
                    Tab1(),
                    Tab2(),
                  ]))

              ],
            ),
          ),

        ),
      ),



    ),


    ),

    );

  }

}



