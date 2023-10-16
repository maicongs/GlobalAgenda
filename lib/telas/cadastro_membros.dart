import 'package:flutter/material.dart';

void main() {
  runApp(CadastroMembros());
}

class CadastroMembros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            key: Key('idmembro'),
            decoration: InputDecoration(labelText: 'ID'),
          ),
          TextFormField(
            key: Key('nome'),
            decoration: InputDecoration(labelText: 'Nome'),
          ),
        ],
      ),
    );
  }
}
