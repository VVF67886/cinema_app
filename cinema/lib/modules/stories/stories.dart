import 'package:cinema/widget/images.dart';
import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
              child: Text('Trame',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold))),
          Row(
            children: [
              /*Container(margin:EdgeInsets.only(top:30),
              child:
            Image.asset('assets/images/home/familia.jpeg',height:50,width:50)),*/
              //Image.asset(Images.familia),
              // Image.asset(Images.joker),
            ],
          ),
          Row(
            children: [
              /*Container(margin:EdgeInsets.only(top:30),
              child:
            Image.asset('assets/images/home/familia.jpeg',height:50,width:50)),*/
              //Image.asset(Images.familia),
              // Image.asset(Images.joker),
            ],
          ),
        ],
      ),
    );
  }
}

class DescriptionStory extends StatelessWidget {
  const DescriptionStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 35),
            child: const Center(
                child: Text('TitleStory',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)))),
        Container(
            margin: const EdgeInsets.only(top: 25),
            child: const Center(
                child: Text('DescriptionStory',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)))),
      ],
    );
  }
}
