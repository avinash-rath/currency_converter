import 'package:currency_converter/currencyService.dart';
import 'package:flutter/material.dart';

class InputRedPage extends StatefulWidget {
  final origCurrency;
  final convCurrency;

  InputRedPage({this.origCurrency, this.convCurrency});
  @override
  _InputRedPageState createState() => _InputRedPageState();
}

class _InputRedPageState extends State<InputRedPage> {
  var currInput = 0;

  calculateNumber(number) {
    if (currInput == 0) {
      setState(() {
        currInput = number;
      });
    } else {
      setState(() {
        currInput = (currInput * 10) + number;
      });
    }
  }

  Widget numberRow(var one, var two, var three) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            calculateNumber(one);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0), color: Color(0xFFEC5759)),
            child: Center(
              child: Text(
                one.toString(),
                style: TextStyle(color: Color(0xFFFFB6B6), fontSize: 22.0),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calculateNumber(two);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Color(0xFFEC5759),
            ),
            child: Center(
              child: Text(
                two.toString(),
                style: TextStyle(color: Color(0xFFFFB6B6), fontSize: 22.0),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calculateNumber(three);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Color(0xFFEC5759),
            ),
            child: Center(
              child: Text(
                three.toString(),
                style: TextStyle(color: Color(0xFFFFB6B6), fontSize: 22.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF9898),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          InkWell(
            onTap: () {
              setState(() {
                currInput = 0;
              });
            },
            child: Text(
              'Tap to Delete',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              currInput.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          numberRow(1, 2, 3),
          SizedBox(
            height: 25.0,
          ),
          numberRow(4, 5, 6),
          SizedBox(
            height: 25.0,
          ),
          numberRow(7, 8, 9),
          SizedBox(
            height: 25.0,
          ),
          finalRow(),
        ],
      ),
    );
  }

  Widget finalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: Color(0xFFEC5759),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Center(
              child: Text(
                '.',
                style: TextStyle(
                  color: Color(0xFFFFB6B6),
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calculateNumber(0);
          },
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: Color(0xFFEC5759),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Center(
              child: Text(
                '0',
                style: TextStyle(
                  color: Color(0xFFFFB6B6),
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            CurrencyService().convertCurrency(
                widget.origCurrency, widget.convCurrency, currInput, context);
          },
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Center(
              child: Icon(
                Icons.check,
                size: 25.0,
                color: Color(0xFFEC5759),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
