import 'package:flutter/material.dart';
import './questions.dart';
import './options.dart';

void main() {
  runApp(MyQuizzApp());
}
class MyQuizzApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return MyAppState();
  }
}
class MyAppState extends State<MyQuizzApp> {
  // This widget is the root of your application.
  var mp = {'Electric bulb filament is made of': ['gold', 'silver', 'tungsten'],
    'Which of the following is used in pencils?': [
      'graphite',
      'charcol',
      'silicon'
    ],
    'What is the Capital city of Australia?': ['delhi', 'mumbai', 'canberra'],
    'Which country is known as land of Midnight sun?': [
      'norway',
      'sweden',
      'germany'
    ],
    'Which of the following is not a greenhouse gas?': [
      'methane',
      'carbon dioxide',
      'water vapour'
    ],};

  var qus = [
    'Electric bulb filament is made of',
    'Which of the following is used in pencils?',
    'What is the Capital city of Australia?'
    ,
    'Which country is known as land of Midnight sun?',
    'Which of the following is not a greenhouse gas?'
  ];

  List answers = [2, 0, 2, 0, 2];
  String ans = '';

  var indx = 0;
  var count = 0;

  void answer(int b) {


    if (b == answers[indx])
      ++count;
    setState(() {
      ++indx;
    }
    );
    if (indx >= mp.length) {
      var an = count * 10;
      this.ans=an.toString();

    }
  }
    @override
    Widget build(BuildContext context) {
      return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('MyQuizApp'),)
        , body: indx < mp.length ? Column(children: [
          Questions(qus[indx]),

          options(mp[qus[indx]], 0, answer),
          options(mp[qus[indx]], 1, answer),
          options(mp[qus[indx]], 2, answer),

        ],)
            : Center(child: Text('Your score is $ans', style: TextStyle(fontSize: 40),),)
        , backgroundColor: Colors.indigo,
      ),);
    }
  }
