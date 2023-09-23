import 'dart:async';
import 'package:dmi_moviedb_200527_flutter/src/index.dart';
import 'package:flutter/material.dart';

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CsSuar',
      theme: ThemeData.dark(),
      home: SplashScreen(),
      // Pagina1P(titulo: '200527 - TheMovieDb')
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int seg = 5;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: seg), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => Pagina1P(titulo: '200527 - TheMovieDb')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B3336),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'asset/icon/MovieTube_Logo.png',
              height: 120,
            ),
            Text(
              'Espere Un Momento ...',
              style: TextStyle(fontFamily: 'Bebas', fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
