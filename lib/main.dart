import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void OnClicked() {
    setState(() {
      counter++;
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Click Count',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '$counter',
                style: TextStyle(fontSize: 30)
              ),
              IconButton(
                iconSize: 40,
                onPressed: OnClicked,
                icon: Icon(Icons.add_box_rounded)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
