import 'package:art_app/models/art.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RouteSettings router = ModalRoute.of(context)!.settings;
    final art = router.arguments as Art;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Art ${art.id}',
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFFFFFFF),
        ),
        backgroundColor: const Color(0xFF17192D),
        toolbarHeight: 48.0,
      ),
      body: Center(
        child: Text('Art Name: ${art.name}'),
      ),
    );
  }
}