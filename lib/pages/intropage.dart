import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grossery/pages/Homepage.dart';


class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: Image.asset(
                  'lib/images/logo.png',
                  height: 400,
                  width: 900,
                ),
              ),
          
              // Description
              Text(
                "We deliver groceries at your doorstep",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
          const SizedBox(height: 24,),
              // Subtitle
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'Fresh items every day',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
          
              // Get Started Button
             Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>Homepage(),),),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.green
                    ),
                    child: 
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text("Get started",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                  ),
                ),
                
              ),
            ],
          ),
        ],
      ),
    );
  }
}
