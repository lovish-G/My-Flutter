import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../user.dart';
import '../widgets/drawer.dart';


class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
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
        onPressed: () {ref.read(userProvider.notifier).logout();
          
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
  return Row(
    children: <Widget>[
       const Text("work in progress",
      style: TextStyle(
        color: Colors.pinkAccent,
        fontSize: 50,
      ),
      ),
    ],
    mainAxisAlignment: MainAxisAlignment.center,
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
  return Row(
    children: <Widget> [
      const Text("work in progress",
  style: TextStyle(
    color: Colors.greenAccent,
    fontSize: 50,
  ),),],
  mainAxisAlignment: MainAxisAlignment.center,
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
  return Row(
    children: <Widget> [ 
      const Text("work in progress",
  style: TextStyle(
    color: Colors.blueAccent,
    fontSize: 50,
  ),),],
  mainAxisAlignment: MainAxisAlignment.center,
  );
}}
