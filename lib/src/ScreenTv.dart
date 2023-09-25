import 'package:flutter/material.dart';

class ScreenTv extends StatefulWidget {
  const ScreenTv({super.key, required this.titulo});
  final String titulo;
  @override
  State<ScreenTv> createState() => _ScreenTvState();
}

class _ScreenTvState extends State<ScreenTv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Estas en la pantalla de Televidorass",
          style: TextStyle(fontFamily: 'Bebas', fontSize: 30),
        ),
      ),
    );
  }
}
