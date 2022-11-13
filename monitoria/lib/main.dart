import 'package:flutter/material.dart';
import 'package:monitoria/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        brightness: Brightness.light,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _selectedIndex = 0;

  static List<Widget> _widgetOpcion = [
    PageContador(),
    Text('Index 1'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: customAppBar(),
      bottomNavigationBar: customBottomNav(),
      body: Center(
        child: _widgetOpcion.elementAt(_selectedIndex),
      ),
    );
  }

  Widget customBottomNav() {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 153, 0, 0),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined), label: 'Contador'),
        BottomNavigationBarItem(icon: Icon(Icons.access_time_outlined), label: 'Hola2'),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

PreferredSizeWidget customAppBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 153, 0, 0),
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu),
    ),
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))],
    title: const Center(child: Text('Herramientas')),
  );
}
