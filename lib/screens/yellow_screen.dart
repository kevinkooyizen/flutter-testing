import 'package:flutter/material.dart';

class YellowScreen extends StatefulWidget {
  const YellowScreen({Key? key}) : super(key: key);

  @override
  _YellowScreenState createState() => _YellowScreenState();
}

class _YellowScreenState extends State<YellowScreen> {
  late String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
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
                  ),
                ),
              ),
              const Text(
                'This is a yellow Screen',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
