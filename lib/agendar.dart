import 'package:flutter/material.dart';

class AdicionarClienteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Cliente'),
        backgroundColor: Colors.pink[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Agendar Cliente',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink[300], // Rosa mais intenso
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Observações'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Implemente a lógica para agendar o cliente aqui
              },
              child: Text('Agendar Cliente'),
            ),
          ],
        ),
      ),
    );
  }
}
