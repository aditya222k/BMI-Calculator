import 'package:bmi_calculator/reusable.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'buttons.dart';

class ResultsPage extends StatefulWidget {
  ResultsPage({this.bmiResult, this.resultText, this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('BMI calculator'),
        // ),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: Container(
            decoration: BoxDecoration(
              // color: Color(0xFF0A0E24),
              color: Color(0xffffffff),
            ),
            height: 112,
            width: double.infinity,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(top: 57),
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                    color: Color(0xFF21335e),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
              // width: double.infinity,
              child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Your Results',
              style: kTitleTextStyle,
            ),
          )),
        ),
        Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    widget.bmiResult,
                    style: kBMITextStyle,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      widget.interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )),
        BottomButton(
          onTap: () {
            Navigator.pop(context);
          },
          buttonTitle: 'Re Calculate',
        )
      ],
    ));
  }
}
