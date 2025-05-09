import 'package:flutter/material.dart';

class ColorF extends StatelessWidget {
  const ColorF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Color Filtered',
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: Color(0xff0fc855),
        centerTitle: true,
      ),
      body: ColorFiltered(
        colorFilter: const ColorFilter.mode(
          Colors.white,
          BlendMode.color,
        ),
        child: Image.asset('assets/tungtungtungsahur.jpg'),
      ),
    );
  }
}
