// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app_ui/login_screen.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Builder(builder: (context) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //sec image
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/R.c8ba7252843d433de1601e3b3dd8b5a6?rik=3lWlo3x%2fMOTIeA&pid=ImgRaw&r=0"),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //sec text
                  Text("Create an account",style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),),

                  SizedBox(
                    height: 10,
                  ),
                     

                     //sec form 1 (Name)
                   TextFormField(
                    keyboardType: TextInputType.name,

                    //sec enable
                    decoration: InputDecoration(
                     //sec form 1 (Name)
                        labelText: "Name", //text
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

                    SizedBox(height: 10,),

                  //sec form 2 (Email)
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,

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

                  //sec form 3(Password)
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
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
                          onPressed: () {},
                          child: Text(
                            "Register",
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
                        Text("if u have an account"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder:
                                 (context) => LoginScreen()
                                 )
                                );
                            },
                            child: Text("Login now"))
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}