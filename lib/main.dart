import 'dart:io';
import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(title: 'My Lab 01'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.account_circle, size: 40),
                    const Text('Chaiyut Tavon'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Column(
                  children: [
                  ClipRRect(
                    borderRadius  : BorderRadius.circular(50.0),
                    child: Image.network(
                    'https://avatars.githubusercontent.com/u/135094423?v=4',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    const Icon(FontAwesomeIcons.github, ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                          text: "GitHub:  chaiyut-kun",
                          style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse("https://github.com/chaiyut-kun"),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ]
                    )
                    ),
                    ],
                  ),
                      ],
                    )
              ),
              const Icon(Icons.confirmation_number, size: 40),
              const Text('663450037-1'),
              const Icon(Icons.school, size: 40),
              const Text('CIS'),
              const Icon(Icons.location_city, size: 40),
              const Text('Khon Kaen University'),
            ],
          ),
        ),
      ),
    );
  }
}
