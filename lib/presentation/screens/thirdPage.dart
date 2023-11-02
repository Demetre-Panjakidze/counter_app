import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    super.key,
    required this.color,
    required this.title,
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: const Column(
        children: [Text('hi')],
      ),
    );
  }
}
