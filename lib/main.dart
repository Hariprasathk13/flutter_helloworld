import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(SafeArea(child: myapp()));
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
            ),
            Container(color: Colors.black.withOpacity(0.25)),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/klncelogo.jpg'),
                    height: 200.0,
                    width: 200.0,
                  ),
                  Text(
                    'KLN College Of Engineering',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text('Login to continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic)),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.amber))),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
