import 'package:flutter/material.dart';

class p3 extends StatefulWidget {
  const p3({Key? key}) : super(key: key);

  @override
  _p3State createState() => _p3State();
}

class _p3State extends State<p3> {
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
            'How was the lighting and seating arrangements?',
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
                Navigator.pushReplacementNamed(context, '/p4',
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
