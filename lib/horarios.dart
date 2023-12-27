// horarios.dart
import 'package:flutter/material.dart';

class HorariosScreen extends StatelessWidget {
  final String nomeCliente;
  final String observacoesCliente;
  final DateTime dataSelecionada;
  final TimeOfDay horarioSelecionado;

  HorariosScreen({
    required this.nomeCliente,
    required this.observacoesCliente,
    required this.dataSelecionada,
    required this.horarioSelecionado,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horários Marcados'),
        backgroundColor: Colors.pink[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detalhes do Agendamento',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink[300],
              ),
            ),
            SizedBox(height: 20.0),
            Text('Nome: $nomeCliente', style: TextStyle(fontSize: 16.0)),
            Text('Observações: $observacoesCliente', style: TextStyle(fontSize: 16.0)),
            Text('Data: ${_formatDate(dataSelecionada)}', style: TextStyle(fontSize: 16.0)),
            Text('Horário: ${_formatTime(horarioSelecionado)}', style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatTime(TimeOfDay time) {
    return '${time.hour}:${time.minute}';
  }

  static void processarDados({
    required String nomeCliente,
    required String observacoesCliente,
    required DateTime dataSelecionada,
    required TimeOfDay horarioSelecionado,
  }) {
    // Aqui você processa os dados recebidos
    print('Dados recebidos em HorariosScreen:');
    print('Nome: $nomeCliente');
    print('Observações: $observacoesCliente');
    print('Data: $dataSelecionada');
    print('Horário: $horarioSelecionado');
  }
}