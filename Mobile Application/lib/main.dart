import 'package:flutter/material.dart';
import 'signIn.dart';
import 'package:flutter_login/theme.dart';
import 'package:flutter_login/flutter_login.dart';

void main() {
  runApp(MaterialApp(home: LoginScreen()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        // changing the primarySwatch b elow to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        canvasColor: Color(0xFF2F7888),
      ),
      home: const MyHomePage(title: 'Hello, Akhil!'),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlutterLogin(
        
      
        logo: 'assets/4.png',
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const MyHomePage(title: "Hello, Akhil!"),
          ));
        },
        onLogin: (LoginData) {},
        onRecoverPassword: (String) {},
        onSignup: (LoginData) {},
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        // Here we take the value fro
        //m the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child:
                  Text('Your preferred genres', style: TextStyle(fontSize: 20)),
            ),
            Column(children: [
              Wrap(alignment: WrapAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: InputChip(
                        label: Text('Mystery'),
                        onSelected: (bool value) {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: InputChip(
                        label: Text('Comedy'),
                        onSelected: (bool value) {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: InputChip(
                        label: Text('Non-fiction'),
                        onSelected: (bool value) {},
                      ),
                    ),
                  ],
                ),
              ]),
            ]),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Your Downloaded Summaries',
                  style: TextStyle(fontSize: 20)),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('The Catcher in the Rye'),
                    subtitle: Text(
                      'J. D. Salinger',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('Read'),
                      ),
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('Listen'),
                      ),
                    ],
                  ),
                  Image.asset('assets/1.jpg'),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('The Martian'),
                    subtitle: Text(
                      'Andy Weir',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('Read'),
                      ),
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('Listen'),
                      ),
                    ],
                  ),
                  Image.asset('assets/2.jpg'),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('The Great Gatsby'),
                    subtitle: Text(
                      'F. Scott Fitzgerald',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('Read'),
                      ),
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('Listen'),
                      ),
                    ],
                  ),
                  Image.asset('assets/3.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.book),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
