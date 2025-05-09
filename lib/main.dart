import 'package:flutter/material.dart';
import 'index.dart';
import 'pagina_animated_padding.dart';
import 'pagina_builder.dart';
import 'pagina_color_filtered.dart';
import 'pagina_cupertino_scrollbar.dart';
import 'pagina_decorated_box.dart';
import 'pagina_expansion_panel_list.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
        '/': (context) => const Index(),
        '/animatedpadding': (context) => const AnimatedPaddingPage(),
        '/builder': (context) => const Builderw(),
        '/colorfiltered': (context) => const ColorF(),
        '/cupertinoscroll': (context) => const CupertinoScroll(),
        '/decoratedbox': (context) => const DecoratedCaja(),
        '/expansionpanel': (context) => const ExpansionPanelL(),
      },
    );
  }
}
