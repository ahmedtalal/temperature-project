import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const ROUTE = "/home" ;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double tempValue = 0.0 ;
  bool selected = true ;
  double resultConvert = 0.0 ;
  var typconvert ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "temperature project"
        ),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // temperature value
            TextField(
              keyboardType: TextInputType.number ,
              decoration: InputDecoration(
                hintText: "Enter your temperaturer"
              ),
              onChanged: (value){
                setState(() {
                  try {
                    tempValue = double.parse(value) ;
                  } catch (e) {
                  }
                });
              },
            ),

            // fehren hegiht 
            RadioListTile(
              value: true,
              groupValue: selected ,
              onChanged: (value){
                setState(() {
                  selected = value ;
                });
              },
              title: Text("Fehrin Height"),
            ),

            // ceil 
            RadioListTile(
              value: false ,
              groupValue: selected ,
              onChanged: (value){
                setState(() {
                  selected = value ;
                });
              },
              title: Text("Celsius"),
            ) ,
            
            // raised button
            RaisedButton(
              child: Text("Convert"),
              onPressed: (){
                setState(() {
                  resultConvert = selected ? tempValue + 10 : tempValue + 20 ;
                  typconvert = selected ? "fehrin" : "celsius" ;
                });
              },
            ) ,

            // the result of converting process 
            Container(
              child: Text(
                "the result is $resultConvert $typconvert  " ,
                style: TextStyle(
                  color: Colors.black ,
                  fontSize: 15 ,
                  fontWeight: FontWeight.bold
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal ,
                  width: 2 ,
                ) ,
                borderRadius: BorderRadius.circular(10) ,
              ),
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(top: 25),
            ),
          ],
        ),
      ),
    );
  }
}