import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/changing_text_screen.dart';
import 'package:flutter_testing/screens/green_screen.dart';
import 'package:flutter_testing/screens/yellow_screen.dart';
import 'package:flutter_testing/utilities/constants.dart';
import 'package:flutter_testing/widgets/button_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Text('Home Screen'),
              // Large Padding
              const SizedBox(height: kLargePadding),

              // Button to go to yellow screen
              MyButtonWidget(
                buttonText: 'Yellow Screen',
                buttonAction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const YellowScreen(),
                    ),
                  );
                },
                buttonColour: Colors.yellow,
              ),

              // Large Padding
              const SizedBox(height: kLargePadding),

              // Button to go to green screen
              MyButtonWidget(
                buttonText: 'Green Screen',
                buttonAction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const GreenScreen();
                      },
                    ),
                  );
                },
                buttonColour: Colors.green,
              ),

              // Large Padding
              const SizedBox(height: kLargePadding),

              // Button to go to changing text screen
              MyButtonWidget(
                buttonText: 'Changing Text Screen',
                buttonAction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ChangingText();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
