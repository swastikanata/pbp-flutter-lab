import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Counter Program'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _parity = "EVEN";
  MaterialColor _color = Colors.red;
  bool _isVisible = false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
        _parity = "EVEN";
        _color = Colors.red;
      } else {
        _parity = "ODD";
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
          title: Text(widget.title),
        ),
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
        floatingActionButton: Row(
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
        )
      );
  }
}
