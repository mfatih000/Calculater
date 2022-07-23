import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculate It",
      home: Sketch(),
    );
  }
}

class Sketch extends StatelessWidget {
  const Sketch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late num num1, num2, result=0;


  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  sumNumbers(){
    setState(() {
      num1=num.parse(t1.text);
      num2=num.parse(t2.text);

      result=num1+num2;
    });
  }
  extractionNumbers(){
    setState(() {
      num1=num.parse(t1.text);
      num2=num.parse(t2.text);

      result=num1-num2;
    });
  }
  divNumbers(){
    setState(() {
      num1=num.parse(t1.text);
      num2=num.parse(t2.text);

      result=num1/num2;
    });
  }
  multiNumbers(){
    setState(() {
      num1=num.parse(t1.text);
      num2=num.parse(t2.text);

      result=num1*num2;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      child: Center(
        child: Column(
          children: [
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              children: [
                RaisedButton(onPressed:sumNumbers,child: Text("+"),color:Colors.blue,),
                RaisedButton(onPressed:extractionNumbers,child: Text("-"),color:Colors.green),
                RaisedButton(onPressed:divNumbers,child: Text("/"),color:Colors.deepOrange),
                RaisedButton(onPressed:multiNumbers,child: Text("x"),color:Colors.deepPurple),
              ],
            ),
            Text("$result"),

          ],
        ),
      ),
    );
  }
}
