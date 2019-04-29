import 'package:currency_converter/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyService {
  getCurrency(currency) {
    if (currency == 'USD') return 'United States Dollar';
    if (currency == 'RUB') return 'Russian Ruble';
    if (currency == 'INR') return 'Indian National Rupee';
    if (currency == 'JPY') return 'Japanese Yen';
    if (currency == 'GBP') return 'Pound Sterling';
  }

  convertCurrency(String fromCurrency, String toCurrency, int amount, context) {
    if (fromCurrency == 'USD') {
      switch (toCurrency) {
        case 'RUB':
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => DashBoardPage(
                    currencyVal: amount,
                    convertedCurrency: (amount * 65).roundToDouble(),
                    currencyOne: fromCurrency,
                    currencyTwo: toCurrency,
                    isWhite: false,
                  ),
            ),
          );
          break;
        
        case 'INR' : 
         Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => DashBoardPage(
                    currencyVal: amount,
                    convertedCurrency: (amount * 71).roundToDouble(),
                    currencyOne: fromCurrency,
                    currencyTwo: toCurrency,
                    isWhite: false,
                  ),
            ),
          );
          break;

          case 'JPY' :
           Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => DashBoardPage(
                    currencyVal: amount,
                    convertedCurrency: (amount * 112).roundToDouble(),
                    currencyOne: fromCurrency,
                    currencyTwo: toCurrency,
                    isWhite: false,
                  ),
            ),
          );
          break;

          case 'GBP' :
           Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => DashBoardPage(
                    currencyVal: amount,
                    convertedCurrency: (amount * 0.77).roundToDouble(),
                    currencyOne: fromCurrency,
                    currencyTwo: toCurrency,
                    isWhite: false,
                  ),
            ),
          );
          break;
      }
    }
    if (fromCurrency == 'RUB') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DashBoardPage(
                currencyVal: (amount / 65).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyOne: toCurrency,
                currencyTwo: fromCurrency,
                isWhite: true,
              ),
        ),
      );
    }
    if (fromCurrency == 'INR') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DashBoardPage(
                currencyVal: (amount / 71).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyOne: toCurrency,
                currencyTwo: fromCurrency,
                isWhite: true,
              ),
        ),
      );
    }
    if (fromCurrency == 'JPY') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DashBoardPage(
                currencyVal: (amount / 112).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyOne: toCurrency,
                currencyTwo: fromCurrency,
                isWhite: true,
              ),
        ),
      );
    }
    if (fromCurrency == 'GBP') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DashBoardPage(
                currencyVal: (amount / 0.77).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyOne: toCurrency,
                currencyTwo: fromCurrency,
                isWhite: true,
              ),
        ),
      );
    }
  }
}
