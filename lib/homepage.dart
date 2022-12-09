import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ziedyoga/diet.dart';
import 'package:ziedyoga/yoga.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 70,
                color: Color.fromARGB(255, 140, 68, 42),
                child: Image.asset("assets/logo.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: EdgeInsets.only(right: 180),
                  child: Text(
                    "Welcome to us",
                    style: TextStyle(fontSize: 25),
                  )),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Text(
                    "It’s time to roll out your yoga mat and discover the combination of physical and mental exercises that for thousands of years have hooked yoga practitioners around the globe. The beauty of yoga is that you don’t have to be a yogi or yogini to reap the benefits. "),
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(1000)),
                  child: Image.asset("assets/2.jpg")),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.075,
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Yoga())));
                  }),
                  child: Text(
                    'Yoga Session',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'DelaGothic'),
                  ),
                  style: ElevatedButton.styleFrom(
                      enableFeedback: false,
                      elevation: 20,
                      backgroundColor: Color.fromARGB(255, 234, 134, 98),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(1000)),
                  child: Image.asset("assets/1.png")),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.075,
                child: ElevatedButton(
                  onPressed: (() {
                   
                   Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Diet())));

                  }),
                  child: Text(
                    'Your diet',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'DelaGothic'),
                  ),
                  style: ElevatedButton.styleFrom(
                      enableFeedback: false,
                      elevation: 20,
                      backgroundColor: Color.fromARGB(255, 234, 134, 98),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
