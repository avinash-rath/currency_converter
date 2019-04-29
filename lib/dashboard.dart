import 'package:currency_converter/currencyList.dart';
import 'package:currency_converter/currencyService.dart';
import 'package:currency_converter/redInput.dart';
import 'package:currency_converter/whiteInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyOne;
  final currencyTwo;
  final isWhite;

  DashBoardPage(
      {this.currencyVal,
      this.convertedCurrency,
      this.currencyOne,
      this.currencyTwo,
      this.isWhite});
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFEC5759),
              ),
              Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                        child: Container(
                          color: Color(0xFFEC5759),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => CurrencyList(),
                            ),
                          );
                        },
                        child: Text(
                          CurrencyService().getCurrency(widget.currencyOne),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => InputRedPage(
                                    origCurrency: widget.currencyOne,
                                    convCurrency: widget.currencyTwo,
                                  ),
                            ),
                          );
                        },
                        child: Text(
                          widget.currencyVal.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 120.0,
                          ),
                        ),
                      ),
                      Text(
                        widget.currencyOne,
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 125.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62.5),
                          color: Colors.white,
                          border: Border.all(
                              color: Color(0xFFEC5759),
                              width: 5.0,
                              style: BorderStyle.solid),
                        ),
                        child: Center(
                          child: widget.isWhite
                              ? Icon(
                                  Icons.arrow_upward,
                                  size: 60.0,
                                  color: Color(0xFFEC5759),
                                )
                              : Icon(
                                  Icons.arrow_downward,
                                  size: 60.0,
                                  color: Color(0xFFEC5759),
                                ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        widget.currencyTwo,
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0xFFEC5759).withOpacity(0.5)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => InputWhitePage(
                                    origCurrency: widget.currencyOne,
                                    convCurrency: widget.currencyTwo,
                                  ),
                            ),
                          );
                        },
                        child: Text(
                          widget.convertedCurrency.toString(),
                          style: TextStyle(
                            color: Color(0xFFEC5759),
                            fontSize: 120.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => CurrencyList(),
                            ),
                          );
                        },
                        child: Text(
                          CurrencyService().getCurrency(widget.currencyTwo),
                          style: TextStyle(
                            color: Color(0xFFEC5759),
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
