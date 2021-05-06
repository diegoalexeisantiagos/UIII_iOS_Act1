import 'package:flutter/material.dart';

void main() => runApp(SantiagoApp());

class SantiagoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: EsScaffold(title: "Flutter en español Santiago"),
    ); //Fin de MaterialApp
  } //fin widget build
} // fin SantiagoApp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} //fin EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.lightBlue,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Image.asset('assets/flutter.png', width: 200.0, height: 200.0), // fin child image
      ), // fin body
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0),
          Text('Drawer 1 Santiago'),
        ]), //Fin de columna
      ), //Fin drawer 1
      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0),
          Text('Drawer 2 Santiago end'),
        ]), //Fin de columna
      ), //Fin endDrawer 2
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(size: 100.0),
                    Text('Bottom sheet Santiago'),
                  ],
                ),
              ); //Fin Container
            }, //Fin builder
          ); //Fin Sheet
        }, //Fin de onPressed
      ), //Fin floatingActionButton
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ),
              Text('bottomNavigationBar con BottomAppBar Santiago')
            ], // Fin <Widget>
          ), //Fin Row
        ), //Fin Container
      ), //Fin bottom aPPBar
    ); //fin de scaffold
  } //fin de widget build
} //fin state<EsScaffold>
