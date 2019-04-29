import 'package:currency_converter/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConvertCurrency(),
    );
  }
}

class ConvertCurrency extends StatefulWidget {
  @override
  _ConvertCurrencyState createState() => _ConvertCurrencyState();
}

class _ConvertCurrencyState extends State<ConvertCurrency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: DashBoardPage(
        currencyVal: 0.0,
        convertedCurrency: 0.0,
        currencyOne: 'USD',
        currencyTwo: 'RUB',
        isWhite: false,
      ),
    );
  }
}
