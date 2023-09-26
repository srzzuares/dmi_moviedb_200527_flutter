//import 'dart:async';
import 'package:dmi_moviedb_200527_flutter/src/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
//import 'package:splash_view/splash_view.dart';

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CsSuar',
      theme: ThemeData.dark(),
      home: SplashScreen(), //Pagina1P(titulo: '200527 - TheMovieDb'),
      /* SplashView(
        backgroundColor: Color(0xFF2B3336),
        loadingIndicator: RefreshProgressIndicator(),
        logo: Image.asset('asset/icon/MovieTube_Logo.png'),
        done: Done(Pagina1P(titulo: '200527 - TheMovieDb')),
      ), */ //Este es por medio de un paquete
      //Home se puede cambiar por el SplashScreen() para que se imprima el otro Propio
      // Pagina1P(titulo: '200527 - TheMovieDb') esto es la pantalla de contenido de la aplicacion
    );
  }
}

//Codigo para hacer un splash screen propio

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Pagina1P(titulo: '200527 - TheMovieDb'),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  /* int seg = 5;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: seg), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => Pagina1P(titulo: '200527 - TheMovieDb')));
    });
  } */

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
