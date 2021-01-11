import 'package:dotaro/settings/Palette.dart';
import 'package:flutter/material.dart';
import 'package:dotaro/helpers/MaterialColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        primarySwatch: generateMaterialColor(ColorPalette.primary),
        brightness: Brightness.light,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          subtitle1: TextStyle(
            color: generateMaterialColor(ColorPalette.onSurface),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      home: MyHomePage(title: 'Dotaro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
      backgroundColor: generateMaterialColor(ColorPalette.background),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Image(image: AssetImage('assets/images/dota-icon-1.png')),
                ),
                Text(widget.title, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: generateMaterialColor(ColorPalette.primary),
                )),
              ]
            )
          )
        ],
        backgroundColor: generateMaterialColor(ColorPalette.background),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image(image: AssetImage('assets/images/home-background-v-1.png')),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: Text('Setup your notifications for your Dota 2 quests & challenges.', style: TextStyle(
                  fontSize: 16,
                  color: generateMaterialColor(ColorPalette.onBackground),
                )),
              ),
              _buildCountdownCards(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: generateMaterialColor(ColorPalette.secondary),
        foregroundColor: generateMaterialColor(ColorPalette.onSecondary),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildCountdownCards() {

    return Card(
      color: generateMaterialColor(ColorPalette.surface),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: Column(
            children: <Widget>[
              const ListTile(
                leading: Image(
                  image: AssetImage('assets/images/guild-quests-icon.png')
                ),
                title: Text('Guild Quests', style: TextStyle(
                  fontSize: 16,
                )),
              )
            ]
        )
      )
    );
  }
}
