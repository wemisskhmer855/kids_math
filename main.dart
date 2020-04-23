import 'package:flutter/material.dart';
import 'math-brain.dart';

void main() => runApp(KidMath());

MathBrain mathBrain = MathBrain();
//var a = mathData.threeChoices.addAll([5, 6, 7]);

class KidMathPage extends StatefulWidget {
  @override
  _KidMathPageState createState() => _KidMathPageState();
}

class KidMath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Kids Math',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Dangrek',
              letterSpacing: 1.0,
            ),
          ),
          backgroundColor: Colors.teal[500],
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
            child: KidMathPage(),
          ),
        ),
      ),
    );
  }
}

class _KidMathPageState extends State<KidMathPage> {
  MathBrain mathBrain = MathBrain();
//  int randomPickOne = mathBrain.randomPickOne;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Row(
//          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//            First Number
              Text(
                '${mathBrain.getFirstNum()}',
                style: TextStyle(
                  fontFamily: 'Preahvihear',
                  fontSize: 40.0,
                  color: Colors.lightBlue[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' + ',
                style: TextStyle(
                  fontFamily: 'Preahvihear',
                  fontSize: 40.0,
                  color: Colors.lightBlue[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
//            Second Number
              Text(
                '${mathBrain.getSecondNum()}',
                style: TextStyle(
                  fontFamily: 'Preahvihear',
                  fontSize: 40.0,
                  color: Colors.lightBlue[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' = ',
                style: TextStyle(
                  fontFamily: 'Preahvihear',
                  fontSize: 40.0,
                  color: Colors.lightBlue[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
//            Empty result
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
//              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
                child: Visibility(
                  visible: true,
                  child: Text(
                    '${mathBrain.getTotalNum()}',
                    style: TextStyle(
                      fontFamily: 'Preahvihear',
                      fontSize: 40.0,
                      color: Colors.lightBlue[500],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.blue, width: 1, style: BorderStyle.solid),
                ),
              ),
            ],
          ),
        ),
//        '${mathBrain.firstNum} + ${mathBrain.secondNum} = ${mathBrain.answer()}'

        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                // the quotes go there
                'Please pick the correct answer.',
//                'randomPickOne',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.green[400],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Dangrek',
                ),
              ),
            ),
          ),
        ),
        //Pick one of the three answers
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                child: Text(
//                 '${mathBrain.getFirstNum()}', //working
                  '${mathBrain.getChoices(0)}', //not working
                  style: TextStyle(
                    fontFamily: 'Preahvihear',
                    fontSize: 40.0,
                    color: Colors.lightBlue[500],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.blue, width: 1, style: BorderStyle.solid),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                child: Text(
                  '${mathBrain.getChoices(1)}',
                  style: TextStyle(
                    fontFamily: 'Preahvihear',
                    fontSize: 40.0,
                    color: Colors.lightBlue[500],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.blue, width: 1, style: BorderStyle.solid),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                child: Text(
//                  '',
                  '${mathBrain.getChoices(2)}',
                  style: TextStyle(
                    fontFamily: 'Preahvihear',
                    fontSize: 40.0,
                    color: Colors.lightBlue[500],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.blue, width: 1, style: BorderStyle.solid),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.lightBlue[500],
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'Dangrek',
                ),
              ),
              onPressed: () {
                setState(() {
                  mathBrain.add();
//                  mathBrain.nextQuestion();
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
