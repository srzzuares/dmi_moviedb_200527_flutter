import 'package:flutter/material.dart';

class ScreenPeliculas extends StatefulWidget {
  const ScreenPeliculas({super.key, required this.titulo});
  final String titulo;
  @override
  State<ScreenPeliculas> createState() => _ScreenPeliculasState();
}

class _ScreenPeliculasState extends State<ScreenPeliculas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Estas en la pantalla de Peliculas",
          style: TextStyle(fontFamily: 'Bebas', fontSize: 30),
        ),
      ),
    );
  }
}
