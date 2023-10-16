import 'package:flutter/material.dart';
import 'package:projetoagenda/telas/tela_cadastro.dart';

void main() {
  runApp(TelaInicial());
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomeScreen(),
        '/tela_cadastro': (context) => Cadastro(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("GLOBAL AGENDA"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/tela_cadastro');
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: Text("CADASTROS"),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: Text("AGENDAMENTOS"),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            child: Text("FILTROS"),
          )
        ],
      )),
    );
  }
}
