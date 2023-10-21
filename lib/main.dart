import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:r_scanner/screen/mains.dart';
import 'package:r_scanner/screen/abot.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(myapp());
}

class start_screen extends StatelessWidget {
  const start_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/icon/icon2.png',
                width: 150,
                height: 150,
              ),
              Text(
                'Loading...',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        splashIconSize: 200,
        nextScreen: homes());
  }
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: start_screen(),
    );
  }
}

class homes extends StatefulWidget {
  const homes({super.key});

  @override
  State<homes> createState() => _homesState();
}

class _homesState extends State<homes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.white54,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(16, 67, 195, 0.818),
                Color.fromRGBO(13, 3, 216, 0.877)
              ], begin: Alignment.topLeft, end: Alignment.topRight),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            pic(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Image to Text Solution Starts Here',
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(168, 80, 39, 240)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            start_btn(),
            SizedBox(
              height: 10,
            ),
            about_btn()
          ],
        ),
      ),
    );
  }

  Widget pic() {
    return Center(
      child: Image(
        image: AssetImage("assets/image/i1.webp"),
        width: 300,
        height: 300,
      ),
    );
  }

  Widget start_btn() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => homess())));
        },
        child: Text(
          'Start',
          style: TextStyle(fontSize: 15),
        ),
        style: ElevatedButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 255, 255, 255),
            backgroundColor: Color.fromRGBO(53, 43, 240, 0.721),
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )));
  }

  Widget about_btn() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => about())));
        },
        child: Text(
          'About Us',
          style: TextStyle(fontSize: 15),
        ),
        style: ElevatedButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 255, 255, 255),
            backgroundColor: Color.fromRGBO(53, 43, 240, 0.721),
            padding: EdgeInsets.symmetric(horizontal: 45, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )));
  }
}
