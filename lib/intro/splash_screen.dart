import 'package:chat_app_ui/login_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/R.c8ba7252843d433de1601e3b3dd8b5a6?rik=3lWlo3x%2fMOTIeA&pid=ImgRaw&r=0"),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "M",
                    style: TextStyle(color: Colors.red,fontSize: 25),
                  ),
                  Text(
                    "enu's App",
                    style: TextStyle(color: Colors.black,fontSize: 25),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
