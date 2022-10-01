import 'package:flutter/material.dart';

void main() {
  runApp(HelloWidget());
}

class HelloWidget extends StatefulWidget {
  const HelloWidget({super.key});

  @override
  State<HelloWidget> createState() => _HelloWidgetState();
}

class _HelloWidgetState extends State<HelloWidget> {
  Color _worldColor = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white70,
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'World!',
              style: TextStyle(
                color: _worldColor,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue.shade700,
                  ),
                  onPressed: () {
                    setState(() {
                      _worldColor = Colors.blue.shade700;
                    });
                  },
                  child: Text(
                    'Blue',
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade700,
                  ),
                  onPressed: () {
                    setState(() {
                      _worldColor = Colors.red.shade700;
                    });
                  },
                  child: Text(
                    'Red',
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade700,
                  ),
                  onPressed: () {
                    setState(() {
                      _worldColor = Colors.green.shade700;
                    });
                  },
                  child: Text(
                    'Green',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
