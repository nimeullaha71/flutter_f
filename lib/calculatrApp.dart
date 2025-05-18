import 'package:flutter/material.dart';
import 'package:flutter_f/widget/calculatorWidget.dart';

class calculatorApp extends StatefulWidget {
  const calculatorApp({super.key});

  @override
  State<calculatorApp> createState() => _calculatorAppState();
}

class _calculatorAppState extends State<calculatorApp> {
  String _output = '0';
  String _input = '';
  String operand = '';
  double num1 = 0;
  double num2 = 0;

  void buttonPressed(String value){
    setState(() {
      if (value=='C'){
         _output = '0';
         _input = '';
         operand = '';
         num1 = 0;
         num2 = 0;
      }
      else if (value == '=') {
        num2 = double.parse(_input);
        if (operand == '+') {
          _output = (num1 + num2).toString();
        }
        else if (operand == '-') {
          _output = (num1 - num2).toString();
        }
        else if (operand == '*') {
          _output = (num1 * num2).toString();
        }
        else if (operand == '/') {
          _output = (num2 !=0)? (num1/num2).toString() : 'Errpr';
        }
        _input = _output;
      }
      else if(['+','-','*','/'].contains(value)){
        num1 = double.parse(_input);
        operand = value;
        _input = '';
      }
      else{
        _input += value;
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator App",style: TextStyle(fontSize: 40),),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [

          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24),
              child: Text(_output,
              style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ),

          Row(
            children: [
              calculatorWidget(text: '7', onClick: () =>buttonPressed('7'), ),
              calculatorWidget(text: '8', onClick: () =>buttonPressed('8'), ),
              calculatorWidget(text: '9', onClick: () =>buttonPressed('9'), ),
              calculatorWidget(text: '/',color: Colors.orange, onClick: () =>buttonPressed('/'), ),
            ],
          ),
          Row(
            children: [
              calculatorWidget(text: '4', onClick: () =>buttonPressed('4'), ),
              calculatorWidget(text: '5', onClick: () =>buttonPressed('5'), ),
              calculatorWidget(text: '6', onClick: () =>buttonPressed('6'), ),
              calculatorWidget(text: '*', color: Colors.orange, onClick: () =>buttonPressed('*'),),
            ],
          ),
          Row(
            children: [
              calculatorWidget(text: '1', onClick: () =>buttonPressed('1'), ),
              calculatorWidget(text: '2', onClick: () =>buttonPressed('2'), ),
              calculatorWidget(text: '3', onClick: () =>buttonPressed('3'), ),
              calculatorWidget(text: '-', color: Colors.orange, onClick: ()  =>buttonPressed('-'),),
            ],
          ),
          Row(
            children: [
              calculatorWidget(text: 'C',color: Colors.green, onClick: ()  =>buttonPressed('C'), ),
              calculatorWidget(text: '0', onClick: ()  =>buttonPressed('0'), ),
              calculatorWidget(text: '=', onClick: ()  =>buttonPressed('='), ),
              calculatorWidget(text: '+', color: Colors.orange, onClick: ()  =>buttonPressed('+'),),
            ],
          )
        ],
      ),
    );
  }
}


