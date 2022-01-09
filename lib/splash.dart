import 'package:flutter/material.dart';
import 'package:the_lesson_teacher/web.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>viewWebsite()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("The Lesson Teacher", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
