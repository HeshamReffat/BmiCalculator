import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String newResult;
  final String newDescription;
  final String newCalc;

  // TODo: this parameter is required to migrate the values to this strings
  ResultScreen({this.newResult, this.newDescription, this.newCalc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      newResult,
                      style: TextStyle(color: newResult == 'Normal'? Colors.green : Colors.red, fontSize: 50),
                    ),
                    Text(
                      newCalc,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      newDescription,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.lightBlue,
            width: double.infinity,
            child: FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Re-Calculate',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
