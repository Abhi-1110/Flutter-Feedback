import 'package:flutter/material.dart';

class p4 extends StatefulWidget {
  const p4({Key? key}) : super(key: key);

  @override
  _p4State createState() => _p4State();
}

class _p4State extends State<p4> {
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
            'Q5?',
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
                Navigator.pushReplacementNamed(context, '/p5',
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
