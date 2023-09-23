import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CsSuar',
      theme: ThemeData.dark(),
      home: const Pagina1P(titulo: '200527 - TheMovieDb'),
    );
  }
}

class Pagina1P extends StatefulWidget {
  const Pagina1P({super.key, required this.titulo});
  final String titulo;
  @override
  State<Pagina1P> createState() => _Pagina1PState();
}

class _Pagina1PState extends State<Pagina1P> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('asset/icon/MovieTube_Logo.png'))),
                ),
              )),
              ListTile(
                leading: Icon(Icons.local_movies),
                title: Text('Peliculas',
                    style: TextStyle(fontFamily: 'Bebas', fontSize: 24)),
              ),
              ListTile(
                leading: Icon(Icons.live_tv),
                title: Text('Television',
                    style: TextStyle(fontFamily: 'Bebas', fontSize: 24)),
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('Cerrar',
                    style: TextStyle(fontFamily: 'Bebas', fontSize: 24)),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.titulo,
          style: TextStyle(fontFamily: 'Bebas', fontSize: 24),
          selectionColor: Colors.white,
        ),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: GNav(
          padding: EdgeInsets.only(right: 12, left: 12, bottom: 25, top: 25),
          gap: 5,
          tabBackgroundColor: Colors.grey.shade800,
          tabMargin: EdgeInsets.all(3),
          textStyle: TextStyle(
              fontFamily: 'Bebas', fontSize: 20, color: Colors.tealAccent),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Inicio',
            ),
            GButton(
              icon: Icons.trending_up,
              text: 'Populares',
            ),
            GButton(
              icon: Icons.flip_camera_android,
              text: 'Proximamente',
            ),
            GButton(
              icon: Icons.favorite_border_outlined,
              text: 'Mejor Valoradas',
            ),
          ],
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.tealAccent,
        ),
      ),
    );
  }
}
