import 'package:flutter/material.dart';

class ReleaseCalendar extends StatefulWidget {
  const ReleaseCalendar({super.key});

  @override
  State<ReleaseCalendar> createState() => _ReleaseCalendarState();
}

class _ReleaseCalendarState extends State<ReleaseCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
              child: Text('Calendario Uscite',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold))),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: const Text('Trame',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: const Text('Trame',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: const Text('Trame',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)))
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: const Text('Trame',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: const Text('Trame',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: const Text('Trame',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)))
            ],
          ),
        ],
      ),
    );
  }
}
