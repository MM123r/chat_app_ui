// ignore_for_file: prefer_const_constructors

import 'package:chat_app_ui/chat_screen.dart';
import 'package:chat_app_ui/functions/regex.dart';
import 'package:chat_app_ui/register_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  var emailcontrolar = TextEditingController();
  var passwordcontrolar = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Builder(builder: (context) {
            return SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //sec image
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/R.c8ba7252843d433de1601e3b3dd8b5a6?rik=3lWlo3x%2fMOTIeA&pid=ImgRaw&r=0"),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    //sec text
                    Text("Welcom Back,"),

                    SizedBox(
                      height: 10,
                    ),

                    //sec form 1 (Email)
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email is required';
                        } else if (!validateemail(value)) {
                          return"Email is not valid";
                        }
                        return null;
                      },
                      //sec enable
                      decoration: InputDecoration(
                          labelText: "Email", //text
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.indigo,
                          ), //icon
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.indigo),
                          ),

                          //sec focuse
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.indigo)),

                          //sec error
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red)),

                          //sec
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red))),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    //sec form 2(Password)
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is required";
                        } else if (value.length < 6) {
                          return 'Password must be at least 6 Characters';
                        }
                        return null;
                      },
                      obscureText: obscureText,
                      decoration: InputDecoration(
                          //sec 1
                          labelText: "Password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              icon: Icon(
                                obscureText
                                    ? Icons.visibility_off
                                    : Icons.remove_red_eye_outlined,
                                color: Colors.indigo,
                              )),
                          prefixIcon: Icon(Icons.lock, color: Colors.indigo),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.indigo)),

                          //sec 2
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.indigo)),

                          //sec 3
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red),
                          ),

                          //sec 4
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red),
                          )),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // buttom login
                    SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              //shape
                            ),
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChatScreen()));
                              }
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ))),

                    SizedBox(
                      height: 10,
                    ),

                    //sec buttom Sin Up
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have an account"),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegisterScreen()));
                              },
                              child: Text("Sin Up"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
