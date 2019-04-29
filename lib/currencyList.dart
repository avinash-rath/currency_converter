import 'package:currency_converter/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyList extends StatefulWidget {
  @override
  _CurrencyListState createState() => _CurrencyListState();
}

class _CurrencyListState extends State<CurrencyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEC5759),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25.0),
          ),
          getListItem('Russian Ruble', 'RUB'),
          getListItem('Indian National Rupee', 'INR'),
          getListItem('Japanese Yen', 'JPY'),
          getListItem('Pound Sterling', 'GBP'),
        ],
      ),
    );
  }

  Widget getListItem(String currencyName, String currency) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(CupertinoPageRoute(
          builder: (context)=> DashBoardPage(
            currencyVal: 0.0, convertedCurrency: 0.0, currencyOne: 'USD', currencyTwo: currency, isWhite: false,
          ),
        ),);
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: 25.0,
          bottom: 20.0,
        ),
        child: Text(
          currencyName,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
