import 'package:flutter/material.dart';
import 'package:gallery_website/frontend/widgets/navgation_header.dart';

void main() {
  runApp(ComponentShowcase());
}

class ComponentShowcase extends StatelessWidget {
  ComponentShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Showcase',
      home: Scaffold(
        body: Center(
          child: NavigationHeader()
        ),
      )
    );
  }
}