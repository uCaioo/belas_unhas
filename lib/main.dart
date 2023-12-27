import 'package:flutter/material.dart';
import 'agendar.dart';
import 'horarios.dart';
import 'cancelamento.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento de Manicure'),
        backgroundColor: Colors.pink[200], // Rosa suave
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Card para Adicionar Cliente
            Card(
              elevation: 4.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdicionarClienteScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.book,
                        size: 50.0,
                        color: Colors.pink[300], // Rosa mais intenso
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Agendar horário',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink[300], // Rosa mais intenso
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Espaçamento entre os cards
            SizedBox(height: 20.0),

            // Card para Visualizar Horários Marcados
            Card(
              elevation: 4.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VisualizarHorariosScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.schedule,
                        size: 50.0,
                        color: Colors.pink[300], // Rosa mais intenso
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Visualizar Horários Marcados',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink[300], // Rosa mais intenso
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Espaçamento entre os cards
            SizedBox(height: 20.0),

            // Card para Cancelar Agendamento
            Card(
              elevation: 4.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CancelarAgendamentoScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.cancel,
                        size: 50.0,
                        color: Colors.pink[300], // Rosa mais intenso
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Cancelar Agendamento',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink[300], // Rosa mais intenso
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

