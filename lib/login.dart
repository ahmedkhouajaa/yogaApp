import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ziedyoga/homepage.dart';
import 'package:ziedyoga/siginup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var useremail, userpassword;
  GlobalKey<FormState> redhawk = new GlobalKey<FormState>();

  signin() async {
    var formdata = redhawk.currentState;
    if (formdata!.validate()) {
      formdata.save();
      print("mrigel");
      try {
        UserCredential userr = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: useremail, password: userpassword);
        return UserCredential;
      } on FirebaseAuthException catch (e) {
        //   if (e.code == 'user-not-found') {
        //    AwesomeDialog(
        //        context: context, title: 'error', body: Text("user-not-found"))
        //     ..show;

        print('No user found for that email.');
      } //else if (e.code == 'wrong-password') {
      //  AwesomeDialog(
      //      context: context,
      //      title: 'error',
      //      body: Text("Wrong password provided for that user."))
      ///    ..show;
      //    print('Wrong password provided for that user.');
    }
  } // else {
  //AwesomeDialog(
  //    context: context,
  //    title: 'error',
  //  body: Text("Wrong password provided for that user."))
  //  ..show;
  // }
  // }

  final number = TextEditingController();
  final password = TextEditingController();
  bool showpass = false;
  var username, passsword, email;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        
        body: Column(
          children: <Widget>[
            Form(
              key: redhawk,
              child: Expanded(
               
                child: Container(
                  color: Colors.brown,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 15),
                        width: double.infinity,
                        child: Text(
                          'WELCOME\nBACK ! ',
                          style: TextStyle(
                            fontFamily: 'Bowlby',
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize:
                                MediaQuery.of(context).size.aspectRatio * 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          onSaved: (val) {
                            useremail = val;
                          },
                          controller: number,
                          decoration: InputDecoration(
                            labelText: '  e-mail',
                            suffixIcon: Icon(Icons.people),
                            floatingLabelStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(17),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  (BorderSide(width: 1.0, color: Color.fromARGB(255, 255, 255, 255))),
                              borderRadius: BorderRadius.all(
                                Radius.circular(17),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  (BorderSide(width: 1.0, color: Color.fromARGB(255, 255, 255, 255))),
                              borderRadius: BorderRadius.all(
                                Radius.circular(17),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          onSaved: (Value) {
                            userpassword = Value;
                          },
                          obscureText: showpass ? false : true,
                          enableSuggestions: false,
                          autocorrect: false,
                          controller: password,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: showpass
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.remove_red_eye),
                            floatingLabelStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(17),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  (BorderSide(width: 1.0, color: Color.fromARGB(255, 255, 255, 255))),
                              borderRadius: BorderRadius.all(
                                Radius.circular(17),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  (BorderSide(width: 1.0, color: Color.fromARGB(255, 255, 255, 255))),
                              borderRadius: BorderRadius.all(
                                Radius.circular(17),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Checkbox(
                              splashRadius: 30,
                              side: BorderSide(width: 2),
                              activeColor: Color.fromARGB(255, 255, 255, 255),
                              value: showpass,
                              onChanged: (newval) {
                                setState(() {
                                  showpass = newval!;
                                });
                              },
                            ),
                            Text(
                              'Show Password',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      showpass ? Color.fromARGB(255, 255, 255, 255) : Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 6),
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => SignUp())));
                              },
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                    fontSize: 22,
                                    color:Color.fromARGB(255, 255, 255, 255) ),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 140, 68, 42),
                                  elevation: 0,
                                  shadowColor: Color.fromARGB(255, 140, 68, 42) ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 10),
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.075,
                            child: ElevatedButton(
                              onPressed: () async {
                                var user = await signin();
                                if (user != null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Homepage())));
                                }
                              },
                              child: Text(
                                'LOG IN',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontFamily: 'DelaGothic'),
                              ),
                              style: ElevatedButton.styleFrom(
                                  enableFeedback: false,
                                  elevation: 10,
                                  backgroundColor: Color.fromARGB(255, 140, 68, 42),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void logg() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Homepage()));
  }

  void sign() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }
}
