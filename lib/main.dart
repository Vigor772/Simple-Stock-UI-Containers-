import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Sample Stock UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.amber,
                    margin: EdgeInsets.only(left: 16, top: 16),
                    height: 70,
                    width: 70,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.blue,
                        margin: EdgeInsets.only(left: 16),
                        height: 30,
                        width: 200,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 5),
                        color: Colors.blue,
                        height: 20,
                        width: 180,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              for (var i = 0; i < 4; i++) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16, top: 16),
                          color: Colors.amber,
                          height: 35,
                          width: 35,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16, top: 16),
                          color: Colors.blue,
                          height: 15,
                          width: 120,
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 16, right: 10),
                        color: Colors.orangeAccent,
                        height: 15,
                        width: 20),
                  ],
                )
              ],
              SizedBox(height: 20),
              for (var i = 0; i < 3; i++) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16, top: 16),
                          color: Colors.amber,
                          height: 35,
                          width: 35,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16, top: 16),
                          color: Colors.blue,
                          height: 15,
                          width: 120,
                        ),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 16, right: 10),
                        color: Colors.orangeAccent,
                        height: 15,
                        width: 20),
                  ],
                )
              ],
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.topCenter,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, top: 16),
                    color: Colors.blue,
                    height: 30,
                    width: 170,
                  ),
                  margin: const EdgeInsets.all(10),
                  //color: Colors.amber,
                  height: 70),
            ],
          ),
        ));
  }
}
