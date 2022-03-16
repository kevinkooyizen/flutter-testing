import 'package:flutter/material.dart';

class YellowScreen extends StatefulWidget {
  const YellowScreen({Key? key}) : super(key: key);

  @override
  _YellowScreenState createState() => _YellowScreenState();
}

class _YellowScreenState extends State<YellowScreen> {
  late String cityName;
  int count = 0;

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
                    Navigator.pop(context, MyTextClass.title);
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
              TextButton(
                onPressed: () {
                  Navigator.pop(context, MyTextClass.name);
                },
                child: const Text(
                  'This is brings me back as well',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: const Text(
                  'Increase count',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextClass {
  static String get name {
    return 'button name';
  }

  static String get title {
    return 'button title';
  }
}
