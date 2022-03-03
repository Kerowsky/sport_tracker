import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'running_task.dart';

void main() {
  runApp(const Main());
}
const backgroundColor = Color.fromRGBO(18, 21, 21, 1);
const elementsColor = Color.fromRGBO(40,60,100,1);
const currentElement = Color.fromRGBO(40, 73, 96, 1.0);
const itemsColor = Color.fromRGBO(26,26,26,1);
const backgroundBlue = Color.fromRGBO(34, 34, 55, 1.0);


class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
      scaffoldBackgroundColor: backgroundColor,
    ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
                    child:const Text("Witaj, Kacper", textAlign: TextAlign.left, style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white
                ),),
                    margin: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 0)
                ),
            const Divider(
              color: elementsColor,
              thickness: 1,
            ),
            Expanded(child: Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(25.0, 15, 25.0, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: itemsColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Ostatni Trening", style: TextStyle(fontSize: 36.0, color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Column(children: [
                      Text("01:52:34", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                      Text("Czas", style: TextStyle(fontSize: 16.0, color: Colors.white)),
                    ],),
                    Column(children: [
                      Text("8 KM", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                      Text("Dystans", style: TextStyle(fontSize: 16.0, color: Colors.white)),
                    ],)
                  ],)
                ],
              ),
            )),
            Expanded(child: Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(25.0, 15, 25.0, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: itemsColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Ostatni Trening", style: TextStyle(fontSize: 36.0, color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [
                        Text("01:52:34", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                        Text("Czas", style: TextStyle(fontSize: 16.0, color: Colors.white)),
                      ],),
                      Column(children: [
                        Text("8 KM", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                        Text("Dystans", style: TextStyle(fontSize: 16.0, color: Colors.white)),
                      ],)
                    ],)
                ],
              ),
            )),
            Expanded(child: Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(25.0, 15, 25.0, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: itemsColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Ostatni Trening", style: TextStyle(fontSize: 36.0, color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [
                        Text("01:52:34", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                        Text("Czas", style: TextStyle(fontSize: 16.0, color: Colors.white)),
                      ],),
                      Column(children: [
                        Text("8 KM", style: TextStyle(fontSize: 24.0, color: Colors.white)),
                        Text("Dystans", style: TextStyle(fontSize: 16.0, color: Colors.white)),
                      ],)
                    ],)
                ],
              ),
            )),
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
              RawMaterialButton(child:  const Icon(Icons.home, color: Colors.white,), padding: const EdgeInsets.all(15.0),fillColor: currentElement, shape: const CircleBorder(),elevation: 2.0,onPressed: (){}),
              RawMaterialButton(child:  const Icon(Icons.task, color: Colors.white,), padding: const EdgeInsets.all(15.0),fillColor: elementsColor, shape: const CircleBorder(),elevation: 2.0, onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => const Run()));
              }),
              RawMaterialButton(child:  const Icon(Icons.person, color: Colors.white,), padding: const EdgeInsets.all(15.0),fillColor: elementsColor, shape: const CircleBorder(),elevation: 2.0,onPressed: (){}),
            ],
          )
        ),
        ],
        )
      )
    );
  }
}



