import 'package:flutter/material.dart';
import 'package:simple_calculator/gridviewmethod/grid_method.dart';
import 'package:simple_calculator/rowcolumnmethod/column_method.dart';
import 'package:simple_calculator/wrapmethod/ui.dart';

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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Simpple Calculator"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "WRAP"),
              Tab(text: "COLUMN"),
              Tab(text: "GRID"),
            ],
            isScrollable: false,
          ),
        ),
        body: const TabBarView(
            children: [Calculator(), ColumnPage(), GridPage()]),
      ),
    );
  }
}
