import 'package:flutter/material.dart';
import 'package:flutter_testing/utilities/constants.dart';

class MyButtonWidget extends StatelessWidget {
  @Deprecated('test deprecated function')
  const MyButtonWidget({
    Key? key,
    required this.buttonText,
    required this.buttonAction,
    this.buttonColour = Colors.grey,
  }) : super(key: key);

  final String buttonText;
  final Function buttonAction;
  final Color buttonColour;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding:
            MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
        backgroundColor: MaterialStateProperty.all<Color>(
          buttonColour,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      onPressed: () {
        buttonAction();
      },
      child: Text(
        buttonText,
        style: kButtonTextStyle,
      ),
    );
  }
}
