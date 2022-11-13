import 'package:flutter/material.dart';

class PageContador extends StatefulWidget {
  PageContador({Key? key}) : super(key: key);

  @override
  State<PageContador> createState() => _PageContadorState();
}

class _PageContadorState extends State<PageContador> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contador: $_counter',
            style: TextStyle(
              fontSize: 40,
              color: const Color.fromARGB(255, 153, 0, 0),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton.extended(
                onPressed: () {
                  _decreaseCounter();
                },
                label: Text('Menos'),
                icon: Icon(
                  Icons.close,
                  color: const Color.fromARGB(255, 153, 0, 0),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  _incrementCounter();
                },
                label: Text('Más'),
                icon: Icon(
                  Icons.check,
                  color: const Color.fromARGB(255, 153, 0, 0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }
}
