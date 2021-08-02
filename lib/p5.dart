import 'package:flutter/material.dart';

class p5 extends StatefulWidget {
  const p5({Key? key}) : super(key: key);

  @override
  _p5State createState() => _p5State();
}

class _p5State extends State<p5> {
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
            'How likely are you to recommend this to your friends?',
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
                Navigator.pushReplacementNamed(context, '/End',
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
