import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final List<String> buttons = [
    'AC',
    'C',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
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
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: buttons.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                if (index == 0 || index == 1) {
                  return CalcButton(
                    buttonText: buttons[index],
                    color: const Color.fromARGB(255, 24, 24, 24),
                    textColor: Color(0xFFE1CFB9),
                  );
                } else {
                  return CalcButton(
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

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    this.color,
    this.textColor,
    required this.buttonText,
  });

  final dynamic color;
  final dynamic textColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: color,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
