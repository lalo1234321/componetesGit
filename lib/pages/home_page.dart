import 'package:flutter/material.dart';
import 'package:jsonproject/providers/menu_provider.dart';


// stles
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página inicial'),
      ),
      body: _crearListViewNuevo(context)
    );
  }

  Widget _crearListView (BuildContext context) {
    return ListView(
        children: [
          _crearListTile(context,'alert'),
          _crearListTile(context,'avatar'),
          _crearListTile(context, 'scroll')
        ]
      );
  }

  ListTile _crearListTile (BuildContext context, String name) {
    return ListTile(
      title: Text('Componente ${name}'),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.purple,),
      leading: Icon(Icons.search),
      onTap: () {
        Navigator.pushNamed(context, 'alert');
      },
    );
  }


  Widget _crearListViewNuevo(BuildContext context) {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearListTileNuevo(snapshot.data, context)
        );
      },
    );
  }

  List<Widget> _crearListTileNuevo(List data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) { 
      final listTileTemp = ListTile(
        title: Text('Componente ${opt['texto']}'),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.purple,),
        leading: Icon(Icons.search),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones.add(listTileTemp);
    });
    return opciones;

  }


}