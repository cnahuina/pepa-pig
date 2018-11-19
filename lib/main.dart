import 'package:flutter/material.dart';
import 'home_page.dart';
void main(){runApp(CatalogApp());}

class CatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
