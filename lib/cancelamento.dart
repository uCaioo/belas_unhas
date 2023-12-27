import 'package:flutter/material.dart';

class CancelarAgendamentoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implemente a tela de cancelar agendamento aqui
    return Scaffold(
      appBar: AppBar(
        title: Text('Cancelar Agendamento'),
        backgroundColor: Colors.pink[200],
      ),
      body: Center(
        child: Text('Tela de Cancelar Agendamento'),
      ),
    );
  }
}