import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

var userInput = '';
var userAnswer = '';

class _CalculatorPageState extends State<CalculatorPage> {
  final List<String> buttons = [
    'AC',
    'DEL',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
                color: const Color.fromARGB(255, 24, 24, 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 50),
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        userInput,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userAnswer,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: buttons.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                // AC Button
                if (index == 0) {
                  return CalcButton(
                    buttonTapped: () {
                      setState(() {
                        userInput = '';
                        userAnswer = '';
                      });
                    },
                    buttonText: buttons[index],
                    color: const Color.fromARGB(255, 24, 24, 24),
                    textColor: Color(0xFFE1CFB9),
                  );
                  // C Button
                } else if (index == 1) {
                  return CalcButton(
                    buttonTapped: () {
                      setState(() {
                        userInput =
                            userInput.substring(0, userInput.length - 1);
                      });
                    },
                    buttonText: buttons[index],
                    color: const Color.fromARGB(255, 24, 24, 24),
                    textColor: Color(0xFFE1CFB9),
                  );

                  // Equal button
                } else if (index == buttons.length - 1) {
                  return CalcButton(
                    buttonTapped: () {
                      setState(() {
                        equalPressed();
                      });
                    },
                    buttonText: buttons[index],
                    color: isOperator(buttons[index])
                        ? Color(0xFFE1CFB9)
                        : Color.fromARGB(255, 51, 51, 51),
                    textColor: isOperator(buttons[index])
                        ? Colors.black
                        : Colors.white,
                  );

                  // Other buttons
                } else if (index == 18) {
                  return CalcButton(
                    buttonTapped: () {
                      setState(() {
                        userInput += userAnswer;
                      });
                    },
                    buttonText: buttons[index],
                    color: isOperator(buttons[index])
                        ? Color(0xFFE1CFB9)
                        : Color.fromARGB(255, 51, 51, 51),
                    textColor: isOperator(buttons[index])
                        ? Colors.black
                        : Colors.white,
                  );
                } else {
                  return CalcButton(
                    buttonTapped: () {
                      setState(() {
                        userInput += buttons[index];
                      });
                    },
                    buttonText: buttons[index],
                    color: isOperator(buttons[index])
                        ? Color(0xFFE1CFB9)
                        : Color.fromARGB(255, 51, 51, 51),
                    textColor: isOperator(buttons[index])
                        ? Colors.black
                        : Colors.white,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

bool isOperator(String x) {
  if (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
    return true;
  }
  return false;
}

void equalPressed() {
  String finalInput = userInput;
  finalInput = finalInput.replaceAll('x', '*');

  Parser p = Parser();
  Expression exp = p.parse(finalInput);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);

  userAnswer = eval.toString();
}

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    this.color,
    this.textColor,
    required this.buttonText,
    this.buttonTapped,
  });

  final dynamic color;
  final dynamic textColor;
  final String buttonText;
  // ignore: prefer_typing_uninitialized_variables
  final buttonTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
