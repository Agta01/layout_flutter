import 'package:flutter/material.dart';

void main() =>  runApp( MyApp());

class MyApp extends StatelessWidget {
 MyApp({super.key});

  // Membuat variabel titleSection sesuai soal 1, 2, dan 3
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),  // Soal 3: padding 32 pada setiap tepinya
    child: Row(
      children: [
        Expanded(
          // Soal 1: Letakkan Column di dalam Expanded
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,  // Soal 1: posisi kolom di awal baris
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),  // Soal 2: padding 8 untuk baris pertama teks
                child: const Text(
                  'Wisata Gunung di Batu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Batu, Malang, Indonesia',
                style: TextStyle(
                  color: Colors.grey,  // Soal 2: set warna teks menjadi abu-abu
                ),
              ),
            ],
          ),
        ),
        // Soal 3: Tambahkan ikon bintang dan teks "41"
        const Icon(
          Icons.star,
          color: Colors.red,  // Set warna ikon menjadi merah
        ),
        const Text('41'),  // Tambahkan teks "41"
      ],
    ),
  );
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

  Widget buttonSection = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Tempat wisata ini ada Jalan Raya Madya, Jurangrejo, Pandesari, Pujon, Kabupaten Malang. '
        'dengan foto atau tempat wisata yang ingin '
        'Florawisata San Terra Lafonte buka pukul 08.00-17.00 WIB.'
        'harga tiket Florawisata San Terra de Lafonte mulai dari Rp 25.000 pada weekdays (hari biasa),'
        'serta mulai dari Rp 30.000 untuk weekend (akhir pekan) atau libur nasional.'
        'Nama Saya Agta Fadjrin Aminullah dengan NIM 2241760072 ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Agta Fadjrin Aminullah dan 2241760072',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/prak_wisata.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            ],
            ),  
      ),
    );
  }
}
Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
