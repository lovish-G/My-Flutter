import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
class HomePage extends StatelessWidget {
const HomePage({Key? key}) : super(key: key);
@override
Widget build(BuildContext context)  => DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      title: Text('My App'),
      centerTitle: true,
      bottom: TabBar(
        tabs: [
          Tab(text: 'Home', icon: Icon(Icons.home)),
          Tab(text: 'Group', icon: Icon(Icons.group)),
          Tab(text: 'peoples', icon: Icon(Icons.person)),
        ],
      ),
    ),
      body: TabBarView(
        children: [ 
         Firstpage(),
         Secondpage(),
         Thirdpage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 32),
        onPressed: () {
          
         },
      ),
      drawer: MyDrawer(),
),
);
}

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

// ignore: camel_case_types
class _FirstpageState extends State<Firstpage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(""),
    ),
   body: Center(
      child: Container(
        child: const Text("work in progress",
        style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 50,
        ),),
      ),
      ),
    );
}}




class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

// ignore: camel_case_types
class _SecondpageState extends State<Secondpage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(""),
    ),
   body: Center(
      child: Container(
        child: const Text("work in progress",
        style: TextStyle(
          color: Colors.yellowAccent,
          fontSize: 50,
        ),),
      ),
      ),
    );
}}





class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

// ignore: camel_case_types
class _ThirdpageState extends State<Thirdpage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(""),
    ),
   body: Center(
      child: Container(
        child: const Text("work in progress",
        style: TextStyle(
          color: Colors.pinkAccent,
          fontSize: 50,
        ),),
      ),
      ),
    );
}}
