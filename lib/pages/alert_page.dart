import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alertPage'),
      ),
      body: Center(
        child: Text('página alert'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home_repair_service, color: Colors.red,),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    );
  }
}