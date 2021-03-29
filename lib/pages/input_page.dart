import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('INTPUT'),
        ),
        body: _crearList(context, 'Componentes Entrada'));
  }

  Widget _crearList(BuildContext context, String name) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Componente ${name}'),
          trailing: Icon(Icons.access_alarm,color: Colors.black,),
          leading: Icon(Icons.search),
          onTap: () {
            print('Compontent 1');
          },
        )
      ],
    );
  }
}
