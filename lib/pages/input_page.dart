import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {

  String _nombre = '';
  String _email = '';
  String _password = '';
  String _opcionSeleccionada = 'C';
  List<String> _lenguajePreferido = ['C', 'Java', 'C++', 'Python', 'C#'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('INTPUT'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          children: [
            _crearInput(),
            SizedBox(height: 20),
            _crearEmail(),
            SizedBox(height: 20),
            _crearPassword(),
            SizedBox(height: 20.0),
            _crearDropDown(),
            _crearPersona()
          ],
        ),
    );    
       
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        suffixIcon: Icon(
          Icons.accessibility,
          color: Colors.red,
        ),
        icon: Icon(Icons.account_circle),
        hintText: 'Escriba su nombre',
        labelText: 'Nombre',
        helperText: 'Nombre completo'
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        suffixIcon: Icon(
          Icons.alternate_email,
          color: Colors.red,
        ),
        icon: Icon(Icons.email),
        hintText: 'Escribe tu email',
        labelText: 'email',
        helperText: 'sólo el email'
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }


  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        suffixIcon: Icon(
          Icons.enhanced_encryption,
          color: Colors.red,
        ),
        icon: Icon(Icons.grain),
        hintText: 'Escriba su password',
        labelText: 'password',
        helperText: 'sólo el password'
      ),
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
    );
  }

  List<DropdownMenuItem<String>> _getOpciones() {
    List<DropdownMenuItem<String>> lista = [];
    _lenguajePreferido.forEach((element) { 
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element, 
      ));
    });
    return lista;
  }


  Widget _crearDropDown() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(height: 30.0,),
        DropdownButton(
          items: _getOpciones(),
          value:_opcionSeleccionada,
          onChanged: (opt) {
            setState(() {
              _opcionSeleccionada = opt;
            });
          },
        )
      ],
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Mi nombre es ${_nombre}'),
      subtitle: Text('Mi correo es ${_email} y mi password es ${_password}'),
      trailing: Text(_opcionSeleccionada),
    );
  }

  
}

