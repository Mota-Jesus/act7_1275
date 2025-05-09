import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScroll extends StatelessWidget {
  const CupertinoScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cupertino Scrollbar',
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: Color(0xff75b402),
        centerTitle: true,
      ),
      body: CupertinoScrollbar(
        thickness: 6.0,
        thicknessWhileDragging: 10.0,
        radius: const Radius.circular(34.0),
        radiusWhileDragging: Radius.zero,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Text(
                '$index',
                style: const TextStyle(fontSize: 30),
              ),
            );
          },
        ),
      ),
    );
  }
}
