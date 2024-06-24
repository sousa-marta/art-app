import 'package:art_app/models/art.dart';
import 'package:art_app/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final arts = [
    const Art(
      id: '1',
      name: 'Art 1',
      imgUrlThumb: 'https://picsum.photos/100',
      imgUrlFull: 'https://picsum.photos/200',
    ),
    const Art(
      id: '2',
      name: 'Art 2',
      imgUrlThumb: 'https://picsum.photos/100',
      imgUrlFull: 'https://picsum.photos/200',
    ),
  ];

  void navigateToDetails(BuildContext context, Art art) {
    Navigator.pushNamed(
      context,
      Routes.details.value,
      arguments: art,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Art App',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        backgroundColor: const Color(0xFF330099),
        toolbarHeight: 48.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21.0, 30.0, 22.0, 60.0),
        child: ListView.separated(
          itemCount: arts.length,
          separatorBuilder: (_, __) => const SizedBox(height: 40.0),
          itemBuilder: (BuildContext context, int index) {
            return 
              CupertinoButton(
                onPressed: () => navigateToDetails(context, arts[index]),
                padding: EdgeInsets.zero,
                child: Image.network(arts[index].imgUrlThumb),
              );
          },
        ),
      )
    );
  }
}