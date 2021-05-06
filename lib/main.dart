
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

        child: ListView(
          children: [
            SingleChildScrollView(
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        width: 410,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          color: Colors.blue,



                        ),
                        child: Center(child: Text("widget 1",style: TextStyle(color: Colors.white,fontSize: 20),),),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                     GestureDetector(
                       onTap: (){
                         AlertDialog alert = AlertDialog(
                           title: Text('success!'),
                         );
                         showDialog(
                             context: context,
                             builder: (BuildContext context) {
                           return alert;
                         },
                         );
                       },
                      child: Container(
                        height: 450,
                        width: 410,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          color: Colors.redAccent
                        ),
                        child: Center(child:Text("widget 2",style: TextStyle(fontSize: 20,color: Colors.white),),),

                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:5,left:7
                          ),
                          child:GestureDetector(
                            onTap: (){
                              AlertDialog alert = AlertDialog(
                                title: Text('widget3'),
                              );
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alert;
                                },
                              );
                            },
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                                color: Colors.purple,



                              ),
                              child: Center(
                                child:Text('widget 3',style: TextStyle(fontSize: 20,color: Colors.white,),),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 2,
                        ),
                        GestureDetector(
                          onTap: (){
                            AlertDialog alert = AlertDialog(
                              title: Text('widget4'),
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },
                            );
                          },
                          child: Container(
                            height: 200,
                            width: 202,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              color: Colors.purple,



                            ),
                            child: Center(
                              child:Text('widget 4',style: TextStyle(fontSize: 20,color: Colors.white,),),
                            ),
                          ),
                        ),
                      ],


                    ),


                  ],

                ),

            ),


          ],



        ),


      ),



    );
  }
}
