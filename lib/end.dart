import 'dart:developer';

import 'package:flutter/material.dart';

class End extends StatefulWidget {
  const End({Key? key}) : super(key: key);

  @override
  _EndState createState() => _EndState();
}

class _EndState extends State<End> {
  void Reset() {
    Navigator.pushReplacementNamed(context, '/');
  }

  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    bool istrue = data['counter'] < 10 ? true : false;
    print(data);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: data['counter'] < 10
                ? Text(
                    'Sorry for the inconvinience',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  )
                : (data['counter'] < 20
                    ? Text(
                        'Hope we can serve you better next time',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      )
                    : Text(
                        'We hope you come back next time',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      )),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  return Reset();
                });
              },
              child: Text('Reset'))
        ],
      ),
    );
  }
}
