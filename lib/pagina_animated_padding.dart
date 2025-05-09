import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  const AnimatedPaddingPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingPage> createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animated padding',
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: Color(0xff0ba194),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
            child: const Text('Change padding'),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
          ),
          Text('Padding = $padValue'),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
