import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      title: 'Telescope - DML',
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}

Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 4,
        navigateAfterSeconds: ProjectsScreen(),
        loaderColor: Colors.transparent,
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.none,
          ),
        ),
      ),
      Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('images/logo-telescope-white.png'),
            height: 80.0,
          ),
        ],
      ))
    ],
  );
}
