// ignore_for_file: prefer_const_constructors, duplicate_ignore, file_names, use_key_in_widget_constructors

import 'package:damo/View/ABC_screen/O.dart';
import 'package:damo/View/ABC_screen/Q.dart';
import 'package:flutter/material.dart';

class P extends StatelessWidget {
  const P({super.key});

  
@override
  Widget build(BuildContext context) {
    var scHeight=MediaQuery.of(context).size.height;
    var scWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: double.infinity,
              width: double.infinity,
            // ignore: prefer_const_constructors
            child: Image(
                // ignore: prefer_const_constructors
                image: AssetImage(
                  "Images/A.png",
                ),
                fit: BoxFit.cover),
          ),
          Positioned(
            top: scHeight * .01,
              left: scWidth * .06,
              child: SizedBox(
                height: 100,width: 100,
                child: Image.asset("Images/Speaker_open.png"))),
          Positioned(
              top: 20,
              left: 150,
              child: SizedBox(
                  height: 300,
                  width: 250,
                  child: Image.asset(
                    "Images/P.gif",
                  ))),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(top: 250.0, left: 420),
            // ignore: prefer_const_constructors
            child: GradientText(
              'For',
              style:
                  const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              gradient:const LinearGradient(colors: [
                Color(0xff57a4ba),
                Colors.black,
              ]),
            ),
          ),
          Positioned(
              top: 40,
              left: 570,
              child: SizedBox(
                  height: 250,
                  width: 200,
                  child: Image(image: AssetImage("Images/Pencil.gif")))),
              // ignore: prefer_const_constructors
              Padding(
            padding: const EdgeInsets.only(top: 260.0, left: 590),
            // ignore: prefer_const_constructors
            child: GradientText(
              'Pencil',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              // ignore: prefer_const_literals_to_create_immutables
              gradient: LinearGradient(colors: [
                Color(0xff57a4ba),
                Colors.black,
              ]),
            ),
          ),
          Positioned(
             height: scHeight * 1.7,
            child: Row(
              children: [
               GestureDetector(
                   onTap: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => O(),
                         ));
                   },
                   // ignore: prefer_const_constructors
                   child: Image(image: AssetImage("Images/Left_arrow.png"),height: 100,
                       width: 220,)
                           ),
                           // ignore: prefer_const_constructors
                           SizedBox(
                  width: 350,
                ),
               GestureDetector(
                  onTap: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Q(),
                         ));
                   },
                   child: Image(
                       image: AssetImage("Images/right_arrow.png"),height: 100,
                       width: 220,)),
            ],),
          ),
        ],
      ),
    );
  }
}


class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}