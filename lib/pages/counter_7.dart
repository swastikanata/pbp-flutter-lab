import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer.dart';

class Counter7 extends StatefulWidget {
  const Counter7({super.key});

  static const String title = "Counter Program";

  @override
  State<Counter7> createState() => _Counter7State();
}

class _Counter7State extends State<Counter7> {
  int _counter = 0;
  String _parity = "GENAP";
  MaterialColor _color = Colors.red;
  bool _isVisible = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    _setParity();
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
    _setParity();
  }

  void _setParity() {
    setState(() {
      if (_counter % 2 == 0) {
        _parity = "GENAP";
        _color = Colors.red;
      } else {
        _parity = "GANJIL";
        _color = Colors.blue;
      }

      if (_counter == 0) {
        _isVisible = false;
      } else {
        _isVisible = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Counter7.title),
        ),
        drawer: buildDrawer(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _parity,
                style: TextStyle(color: _color),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),

        // This trailing comma makes auto-formatting nicer for build methods.
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: _isVisible,
                child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
              ),
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ));
  }
}
