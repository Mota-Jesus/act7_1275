import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Principal',
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: Color(0xff70589a),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              _botonNavegacion(context, 'Animated Padding', '/animatedpadding'),
              _botonNavegacion(context, 'Builder Widget', '/builder'),
              _botonNavegacion(context, 'Color Filtered', '/colorfiltered'),
              _botonNavegacion(
                  context, 'Cupertino Scrollbar', '/cupertinoscroll'),
              _botonNavegacion(context, 'Decorated Box', '/decoratedbox'),
              _botonNavegacion(
                  context, 'Expansion Panel List', '/expansionpanel'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _botonNavegacion(BuildContext context, String texto, String ruta) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurpleAccent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        onPressed: () {
          Navigator.pushNamed(context, ruta);
        },
        child: Text(
          texto,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
