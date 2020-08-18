import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'improve brother man';
    } else if (resultScore <= 20) {
      resultText = 'my man weldone we are expecting more';
    } else if (resultScore <= 30) {
      resultText = 'more greese to ur elbow';
    } else {
      resultText =
          ' where do u belong. ask ur self that question and get back to me';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              
              resultPhrase,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            
            FlatButton(
              onPressed: resetHandler,
              child: Text('Restart Quiz', style: TextStyle(fontSize: 20),),
              textColor: Colors.blue,
              
            ),

           
              Container(
               
                child: Text(
                  
                  '$resultScore', 
                   style: TextStyle(fontSize: 40, color: Colors.blue), 
                 ),
              ) 
            
              ,
          
          ],
        ),
      ),
    );
  }
}
