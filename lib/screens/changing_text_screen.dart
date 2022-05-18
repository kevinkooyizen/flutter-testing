import 'package:flutter/material.dart';
import 'package:flutter_testing/utilities/constants.dart';
import 'package:flutter_testing/utilities/string_helper.dart';

class ChangingText extends StatefulWidget {
  const ChangingText({Key? key}) : super(key: key);

  @override
  State<ChangingText> createState() => _ChangingTextState();
}

class _ChangingTextState extends State<ChangingText> {
  // Random string length
  static const int _randomStringLength = 10;

  // Displayed text
  String _text = '';

  @override
  void initState() {
    _text = StringHelper().getRandomString(_randomStringLength);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              const Text('This screen changes text'),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Go back',
                  style: kButtonTextStyle,
                ),
              ),

              // Large Padding
              const SizedBox(height: kLargePadding),

              // Label for unaltererd text
              const Text(
                'Unaltered Text',
                style: kButtonTextStyle,
              ),

              // Random Text unaltered
              Text(
                _text,
                style: kButtonTextStyle,
              ),

              // Large Padding
              const SizedBox(height: kLargePadding),

              // Label for text with upper case
              const Text(
                'Upper Case Text',
                style: kButtonTextStyle,
              ),

              // Random Text with upper case
              Text(
                StringHelper().toUpperCase(_text),
                style: kButtonTextStyle,
              ),

              // Large Padding
              const SizedBox(height: kLargePadding),

              // Label for text with lower case
              const Text(
                'Lower Case Text',
                style: kButtonTextStyle,
              ),

              // Random Text with lower case
              Text(
                StringHelper().toLowerCase(_text),
                style: kButtonTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
