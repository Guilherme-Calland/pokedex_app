import 'package:flutter/material.dart';
import 'package:pokedex/database/database.helper.dart';

class TestClass extends StatelessWidget {
  var database = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text('add to database'),
          color: Colors.green,
          onPressed: () async{
            Map<String, dynamic> data = {
              'name' : 'user'
            };
            int result = await database.createUserName(data);
            print(result);
          },
        ),
      )
    );
  }
}
