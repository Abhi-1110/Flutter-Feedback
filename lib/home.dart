import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double rating = 0;
  double counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Feedback:Sakura')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'How did you like the service?',
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
                  counter = rating;
                });
              },
              divisions: 5,
              min: 0,
              max: 5,
              label: '$rating'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.pushReplacementNamed(context, '/p1',
                    arguments: {'counter': counter});
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
