import 'package:flutter/material.dart';

class DecoratedCaja extends StatelessWidget {
  const DecoratedCaja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Decorated Box',
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: Color(0xffe07a08),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[
                Color(0xff47ff22),
                Colors.red,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
