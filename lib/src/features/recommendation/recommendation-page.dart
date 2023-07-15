import 'package:flutter/material.dart';

//Third child-page of sliding_background

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 5),
          child: Text(
            'What are you looking for today?',
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontSize: 40,
                  color: Colors.grey.shade800),
                  textAlign: TextAlign.center,
                ),
          ),
        Text(
          'Choose up to six focus areas.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade600),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 360,
          child: GridView.count(
            crossAxisCount: 3,
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            crossAxisSpacing: 40,
            mainAxisSpacing: 50,
            children: [
              //Replace containers with functional filter buttons
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue),
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue),
              ),

              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue),
              ),

              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue),
              ),

              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue),
              ),

              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue),
              )
            ]
          )
        ),  
      ],
    );
    
    
  }
}

