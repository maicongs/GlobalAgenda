import 'package:flutter/material.dart';
import 'package:projetoagenda/telas/cadastro_membros.dart';


void main() {
  runApp(TelaCadastro());
}

class TelaCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/cadastro_membros': (context) => CadastroMembros(),
      },
    );
  }
}

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('GLOBAL AGENDA'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/cadastro_membros');
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: Text("MEMBROS"),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: Text("ATIVIDADES"),
          ),
        ]
      ),
      ),
    );
  }
}
