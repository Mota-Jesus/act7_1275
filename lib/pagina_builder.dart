import 'package:flutter/material.dart';

class Builderw extends StatelessWidget {
  const Builderw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Builder',
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: Color(0xff012b9f),
        centerTitle: true,
      ),
      body: myWidget(),
    );
  }
}

myWidget() => Builder(
      builder: (BuildContext context) {
        return Text(
          'Text with Theme',
          style: Theme.of(context).textTheme.displayLarge,
        );
      },
    );
