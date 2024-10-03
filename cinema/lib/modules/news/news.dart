import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _State();
}

class _State extends State<News> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
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

class DescriptionNews extends StatelessWidget {
  const DescriptionNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 35),
            child: const Center(
                child: Text('TitleNews',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)))),
        Container(
            margin: const EdgeInsets.only(top: 25),
            child: const Center(
                child: Text('DescriptionNews',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)))),
      ],
    );
  }
}
