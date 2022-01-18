import 'package:flutter/material.dart';

class AverageScoreScreen extends StatefulWidget {
  const AverageScoreScreen({Key? key}) : super(key: key);

  @override
  _AverageScoreScreenState createState() => _AverageScoreScreenState();
}

class _AverageScoreScreenState extends State<AverageScoreScreen> {
  TextEditingController? mathScoreController,
      literatureScoreController,
      englishScoreController;
  double mathScore = 0;
  double literatureScore = 0;
  double englishScore = 0;
  double averageScore = 0;
  String grade = "undefined";

  @override
  void initState() {
    super.initState();
    mathScoreController = TextEditingController();
    literatureScoreController = TextEditingController();
    englishScoreController = TextEditingController();
  }

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
          child: Column(children: [
            textInputWidget(
                labelText: "Math Score",
                hintText: "Enter your math score",
                controller: mathScoreController!),
            textInputWidget(
                labelText: "Literature Score",
                hintText: "Enter your literature score",
                controller: literatureScoreController!),
            textInputWidget(
                labelText: "English Score",
                hintText: "Enter your english score",
                controller: englishScoreController!),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    mathScore = double.parse(mathScoreController!.text);
                    literatureScore =
                        double.parse(literatureScoreController!.text);
                    englishScore = double.parse(englishScoreController!.text);
                    averageScore = (double.parse(mathScoreController!.text) +
                            double.parse(literatureScoreController!.text) +
                            double.parse(englishScoreController!.text)) /
                        3;
                    gradeCaculator();
                  });
                },
                child: Text("Xác nhận")),
            informationWidget(
                mathScoreContent: mathScore,
                literatureScoreContent: literatureScore,
                englishScoreContent: englishScore,
                averageScoreContent: averageScore,
                gradeContent: grade)
          ]),
        )));
  }

  Widget textInputWidget(
      {required String labelText,
      required String hintText,
      required TextEditingController controller}) {
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
  }

  Widget informationWidget(
      {required double mathScoreContent,
      required double literatureScoreContent,
      required double englishScoreContent,
      required double averageScoreContent,
      required String gradeContent}) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
      child: Card(
          child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Thông tin"),
            textWidget(
                labelText: "Math Score: ",
                content: mathScoreContent.toString()),
            SizedBox(height: 15),
            textWidget(
                labelText: "Literature Score: ",
                content: literatureScoreContent.toString()),
            SizedBox(height: 15),
            textWidget(
                labelText: "English Score: ",
                content: englishScoreContent.toString()),
            SizedBox(height: 15),
            textWidget(
                labelText: "Average Score: ",
                content: averageScoreContent.toString()),
            SizedBox(height: 15),
            textWidget(labelText: "Grade: ", content: gradeContent)
          ],
        ),
      )),
    );
  }

  textWidget({required String labelText, required String content}) {
    return Container(
      child: Row(
        children: [
          Text(labelText, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(content)
        ],
      ),
    );
  }

  void gradeCaculator() {
    if (averageScore >= 8.0) {
      grade = "Very good";
    } else if (averageScore >= 6.0 && averageScore < 8.0) {
      grade = "Good";
    } else {
      grade = "Bad";
    }
  }
}
