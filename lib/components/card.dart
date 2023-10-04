import 'package:flutter/material.dart';

class CardComponent extends StatefulWidget {
  const CardComponent({super.key});

  @override
  State<CardComponent> createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent> {
  @override
  Widget build(BuildContext context) {
    return const Column(children: [ 
        Text('coucou')
      ]
    );
  }
}