import 'package:flutter/material.dart';

const backgroundColor = Color.fromRGBO(18, 21, 21, 1);
const elementsColor = Color.fromRGBO(40,60,100,1);
const currentElement = Color.fromRGBO(40, 73, 96, 1.0);
const itemsColor = Color.fromRGBO(26,26,26,1);
const backgroundBlue = Color.fromRGBO(34, 34, 55, 1);

void main() {
  runApp(const Run());
}

class Run extends StatefulWidget {


  const Run({Key? key}) : super(key: key);

  @override
  _RunState createState() => _RunState();
}

class _RunState extends State<Run> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: Container(color: backgroundColor, width: double.infinity, child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    overflow: Overflow.visible,
                    children: [
                      Container(
                      child: Image(
                        image: AssetImage("images/map.png"),
                        fit: BoxFit.cover,
                      ),
                      height: 300,
                      width: double.infinity,
                    ),
                      Positioned(bottom: -30,child: Container(decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 1)],
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                          child: CircleAvatar(radius: 40, backgroundImage: NetworkImage("https://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/41/41aa6e4c043b30d3dc5a2e9d8a2657cc2e78e378_full.jpg"),))),
                    ],
                  ),
                  Column(children: [
                    Container(margin: EdgeInsets.only(top: 35.0, left: 25.0, right: 25.0),color: backgroundColor, width: double.infinity, height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("01:52:34", style: TextStyle(fontSize: 48.0, color: Colors.white),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(children: [
                                Text("147", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                                Text("Rytm", style: TextStyle(fontSize: 12.0, color: Colors.white)),
                              ],),
                              Column(children: [
                                Text("823", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                                Text("Spalono", style: TextStyle(fontSize: 12.0, color: Colors.white)),
                              ],),
                              Column(children: [
                                Text("8'11", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                                Text("Tempo", style: TextStyle(fontSize: 12.0, color: Colors.white)),
                              ],),
                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text("8 km", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                                  Text("Dystans", style: TextStyle(fontSize: 12.0, color: Colors.white)),
                                ],),
                              Column(children: [
                                Text("1244", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                                Text("Kroki", style: TextStyle(fontSize: 12.0, color: Colors.white)),
                              ],),
                              Column(
                                children: [
                                  Text("0.5L", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                                  Text("Nawodnienie", style: TextStyle(fontSize: 12.0, color: Colors.white)),
                                ],),
                            ],),
                        ],
                      ),
                    )
                  ],)
                ],
              ),)),
            Container(
                height: 70,
                width: double.maxFinite,
                decoration: const BoxDecoration(

                    color: backgroundBlue,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RawMaterialButton(child:  const Icon(Icons.home, color: Colors.white,), padding: const EdgeInsets.all(15.0),fillColor: elementsColor, shape: const CircleBorder(),elevation: 2.0,onPressed: (){
                      Navigator.pop(context);
                    }),
                    RawMaterialButton(child:  const Icon(Icons.task, color: Colors.white,), padding: const EdgeInsets.all(15.0),fillColor: currentElement, shape: const CircleBorder(),elevation: 2.0, onPressed: (){}),
                    RawMaterialButton(child:  const Icon(Icons.person, color: Colors.white,), padding: const EdgeInsets.all(15.0),fillColor: elementsColor, shape: const CircleBorder(),elevation: 2.0,onPressed: (){}),
                  ],
                )
            ),
            ],
          ),
        )
      ),
    );
  }
}
