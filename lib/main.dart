import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slider'),
        ),
        body: Center(
          child: DemoSlider(),
        ),
      ),
    );
  }
}

class DemoSlider extends StatefulWidget {
  DemoSlider({Key key}) : super(key: key);

  @override
  _DemoSliderState createState() => _DemoSliderState();
}

class _DemoSliderState extends State<DemoSlider> {
  double red = 0.0;
  double green = 0.0;
  double blue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Slider(
          value: red,
          onChanged: (newRed) {
            setState(() {
              red = newRed;
            });
          },
          min: 0.0,
          max: 255.0,
          activeColor: Colors.red
        ),
        SizedBox(height: 20),
        Slider(
          value: green,
          onChanged: (newGreen) {
            setState(() {
              green = newGreen;
            });
            },
            min: 0.0,
            max: 255.0,
            activeColor: Colors.green
        ),
        SizedBox(height: 20),
        Slider(
          value: blue,
          onChanged: (newBlue) {
            setState(() {
              blue = newBlue;
            });
            },
            min: 0.0,
            max: 255.0,
            activeColor: Colors.blue
        ),
        SizedBox(height: 20),
        Container(
          height: 100,
          width: 100,
          color: Color.fromARGB(255, red.floor(), green.toInt(), blue.floor()),
        )
      ]),
    );
  }
}




