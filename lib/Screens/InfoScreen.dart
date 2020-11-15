import 'package:flutter/material.dart';
import 'file:///C:/Users/Hisham/Desktop/bmicalculator/flutter_app/lib/Providers/Calculate.dart';
import 'file:///C:/Users/Hisham/Desktop/bmicalculator/flutter_app/lib/Screens/resultScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

enum Gender {
  male,
  female,
}

class _InfoScreenState extends State<InfoScreen> {
  int weight = 60;
  double height = 160.0;
  int age = 20;
  Gender selectGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                //color: Colors.grey,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectGender = Gender.male;
                          });
                        },
                        child: Container(
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectGender == Gender.male
                                  ? Colors.white
                                  : Colors.grey[400]),
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.mars,
                                size: 100,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectGender = Gender.female;
                          });
                        },
                        child: Container(
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectGender == Gender.female
                                  ? Colors.white
                                  : Colors.grey[400]),
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.venus,
                                size: 100,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Slider(
                      min: 120,
                      max: 220,
                      value: height.toDouble(),
                      onChanged: (val) {
                        setState(() {
                          height = val.roundToDouble();
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'btn1',
                                backgroundColor: Colors.red[300],
                                onPressed: () {
                                  if (weight != 40) {
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                },
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                heroTag: 'btn2',
                                backgroundColor: Colors.teal[400],
                                onPressed: () {
                                  if (weight != 110) {
                                    setState(() {
                                      weight++;
                                    });
                                  }
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'btn3',
                                backgroundColor: Colors.red[300],
                                onPressed: () {
                                  if (age != 18) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                },
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                heroTag: 'btn4',
                                backgroundColor: Colors.teal[400],
                                onPressed: () {
                                  if (age != 90) {
                                    setState(() {
                                      age++;
                                    });
                                  }
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.lightBlue,
            child: FlatButton(
              onPressed: () {
                if (selectGender == Gender.male ||
                    selectGender == Gender.female) {
                  Calculate calculate =
                      Calculate(height: height, weight: weight);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => ResultScreen(
                        newCalc: calculate.calc(),
                        newResult: calculate.result(),
                        newDescription: calculate.description(),
                      ),
                    ),
                  );
                }else{
                  showDialog(
                    context: context,
                    builder: (ctx)=>dialog(),
                  );
                }
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dialog() {
    return AlertDialog(
      title: Text('An Error occurred'),
      content: Text('Please Select Gender'),
      actions: [
        FlatButton(
          child: Text('Ok'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
