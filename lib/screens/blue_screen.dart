import 'package:flutter/material.dart';

// BlueScreen which can be navigated from the home screen
class BlueScreen extends StatefulWidget {
  const BlueScreen({Key? key}) : super(key: key);

  @override
  State<BlueScreen> createState() => _BlueScreenState();
}

class _BlueScreenState extends State<BlueScreen> {
  // Counter for the number of times the button has been pressed
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text('This is a blue screen'),

              // Button to increase counter value
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                child: const Text('Increase counter'),
              ),

              // Text that shows counter value
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
