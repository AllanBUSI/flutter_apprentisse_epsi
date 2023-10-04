import 'package:alexterieur/components/card.dart';
import 'package:flutter/material.dart';

class ButtonComponents extends StatefulWidget {
  const ButtonComponents({super.key, required this.title, required this.textButtonAction});

  final String title;
  final String textButtonAction;

  @override
  State<ButtonComponents> createState() => _ButtonComponentsState();
}

class _ButtonComponentsState extends State<ButtonComponents> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _moinsCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter', 
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 50),
              ),
              onPressed: _moinsCounter,
              child: Text(widget.textButtonAction,  style: const TextStyle(
                color: Color.fromRGBO(255, 0, 70, 1),
                backgroundColor: Color.fromRGBO(0, 0, 100, 1),
              ),
              ),
            ),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(), CardComponent()
                ],
              ),
            ),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(), CardComponent()
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
