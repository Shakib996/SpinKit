import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final spinkit = SpinKitCircle(
    itemBuilder :(BuildContext context, int index){
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.blue :Colors.grey,
        ),
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitCircle(color: Colors.green,size: 150,duration: Duration(milliseconds: 1200),),
      backgroundColor: Colors.black,

    );
  }
}
