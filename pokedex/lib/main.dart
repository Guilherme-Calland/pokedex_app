import 'package:flutter/material.dart';
import 'package:pokedex/database/database.helper.dart';
import 'package:pokedex/database/testClass.dart';

main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  var database = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          color: Colors.red,
          child: Text('go to next page'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TestClass()),
            );
          },
        )
      ),
    );
  }
}
