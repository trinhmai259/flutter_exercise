import 'package:flutter/material.dart';
import 'package:flutter_tinhdiemtrungbinh/average_score.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AverageScoreScreen(),
    );
  }
}
  //const MyExercise({ Key? key }) : super(key: key);

/* TextEditingController? mathScoreController, literatureScoreController, englishScoreController;
String mathScore = "undefined";
String literatureScore = "undefined";
String englishScore = "undefined";

@override
void initState() {
  super.initState(
    mathScoreController = TextEditingController();
    literatureScoreController = TextEditingController();
  );
  
}

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Average Score"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                textInputWidget(
                    labelText: "Math Score",
                    hintText: "Enter your math score",
                    controller: mathScore ),
                textInputWidget(
                    labelText: "Literature Score",
                    hintText: "Enter your literature score",
                    controller: literatureScoreController),
                textInputWidget(
                  labelText: "English Score", 
                  hintText: "Enter your english score", 
                  controller: englishScoreController)
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        userName = userNameController!.text;
                        age = (DateTime.now().year -
                                int.parse(birthYearController!.text))
                            .toString();
                      });
                    },
                    child: Text("Xác nhận")),
              ]
      ),
      );
  }
  Widget textInputWidget(
      {required String labelText,
      required String hintText,
      required controller}) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labelText,
            hintText: hintText),
        controller: controller,
      ),
    );
  } */
  


 