import 'dart:developer';

import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({Key? key}) : super(key: key);

  @override
  _p1State createState() => _p1State();
}

class _p1State extends State<p1> {
  double rating = 0;

  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Feedback')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'How did you appreciate the sanitation?',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          )),
          Slider(
              value: rating,
              onChanged: (newRating) {
                setState(() {
                  rating = newRating;
                });
              },
              divisions: 5,
              min: 0,
              max: 5,
              label: '$rating'),
          ElevatedButton(
            onPressed: () {
              data['counter'] += rating;
              setState(() {
                Navigator.pushReplacementNamed(context, '/p2',
                    arguments: {'counter': data['counter']});
              });
            },
            child: Text(
              'Next',
            ),
          )
        ],
      ),
    );
  }
}
