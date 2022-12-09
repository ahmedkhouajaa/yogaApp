import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Yoga extends StatefulWidget {
  const Yoga({super.key});

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 70,
                color: Color.fromARGB(255, 140, 68, 42),
                child: Image.asset("assets/logo.png"),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  "choose the type of yoga",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Vinyasa yoga",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(1000)),
                  child: Image.asset("assets/3.png")),
              Container(
                child: Text(
                  "Hatha yoga",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(1000)),
                  child: Image.asset("assets/4.jpg")),
              Container(
                child: Text(
                  "Chose ur diet",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  "Vinyasa yoga",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(1000)),
                  child: Image.asset("assets/5.png")),
              Container(
                child: Text(
                  "Hatha yoga",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(1000)),
                  child: Image.asset("assets/6.png")),
            ],
          ),
        ],
      ),
    );
  }
}
