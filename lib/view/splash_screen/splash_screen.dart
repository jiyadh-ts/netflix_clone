import 'package:flutter/material.dart';
import 'package:netflix_clone/util/color_constraints.dart';
import 'package:netflix_clone/util/image_constraints.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3)).then(
      (value){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstraints.Mainblack,
       body: Center(
       child: Image(image:AssetImage(ImageConstraints.LOGO) )
       ),
    );
  }
}