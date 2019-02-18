# carousel_widget

A library for the use of the Carousel Widget through a list of Fragments

## Getting Started

Implements package in your pubspec.yaml

```
dependencies:
  flutter:
    sdk: flutter
  carousel_widget: ^ 0.1.0
```

Use the Carousel and the Fragment to implement any type of Widget

## Example

```
import 'package:flutter/material.dart';
import 'package:carousel_widget/carousel_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carousel Example',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyCarousel(),
    );
  }
}

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Carousel(
        listViews: [
          Fragment(
            child: ListView.builder(
              itemCount: 24,
              itemBuilder: ((context, index) => ListTile(
                    title: Text('index $index'),
                  )),
            ),
          ),
          Fragment(
            child: CircleAvatar(
              radius: 56,
              backgroundColor: Colors.orange,
              child: Text(
                'LM',
                style: TextStyle(fontSize: 48),
              ),
            ),
          )
        ],
      ),
    );
  }
}

```
