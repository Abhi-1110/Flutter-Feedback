import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({Key? key}) : super(key: key);

  @override
  _p2State createState() => _p2State();
}

class _p2State extends State<p2> {
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
            'How was the food quality?',
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
                Navigator.pushReplacementNamed(context, '/p3',
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
