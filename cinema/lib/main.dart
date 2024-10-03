import 'package:cinema/widget/images.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            margin: EdgeInsets.only(top: 10),
            child: const Text('Cinema Web App',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                    fontWeight: FontWeight.bold))),
        Row(children: [
          Container(
              margin: EdgeInsets.only(left: 400, top: 60),
              child: const Text('Home',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.bold))),
          Container(
              margin: EdgeInsets.only(left: 100, top: 60),
              child: const Text('Calendario Uscite',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.bold))),
          Container(
            margin: EdgeInsets.only(left: 100, top: 60),
            child: const Text('News',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          )
        ]),
        Container(margin:EdgeInsets.only(top:45),
          child: Center(
              child: const Text('Drammatico',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold))),
        ),
        const Spacer(),
        const Center(
          child: const Text('Commedia',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        Row(
          children: [
            /*Container(margin:EdgeInsets.only(top:50),
              child:
            Image.asset('assets/images/home/familia.jpeg',height:50,width:50)),*/
            //Image.asset(Images.familia),
            // Image.asset(Images.joker),
          ],
        ),
        Row(
          children: [
            // Image.asset(Images.lanouvellefemme),
            //Image.asset(Images.makingof),
            //Image.asset(Images.laboccadellanima),
          ],
        ),
        Center(
            child: Container(
                margin: EdgeInsets.only(top: 300),
                child: const Text('2024 Cinemawebapp Srl',
                    style: TextStyle(fontSize: 15, color: Colors.black))))
      ])),
    );
  }
}
