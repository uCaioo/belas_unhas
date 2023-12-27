import 'package:flutter/material.dart';
import 'horarios.dart';

class AdicionarClienteScreen extends StatefulWidget {
  @override
  _AdicionarClienteScreenState createState() => _AdicionarClienteScreenState();
}

class _AdicionarClienteScreenState extends State<AdicionarClienteScreen> {
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _observacoesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _selectedTime = TimeOfDay.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendar Cliente'),
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
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink[300],
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15.0),
            TextField(
              controller: _observacoesController,
              decoration: InputDecoration(
                labelText: 'Observações',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: Text('Escolher Data'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink[300],
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () => _selectTime(context),
                  child: Text('Escolher Horário'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink[300],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            _selectedDateTimePreview(),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _encaminharDadosParaOutraTela();
              },
              child: Text('Agendar Cliente'),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink[300],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _selectedDateTimePreview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Data e Horário Selecionados:',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'Data: ${_formatDate(_selectedDate)}',
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          'Horário: ${_formatTime(_selectedTime)}',
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatTime(TimeOfDay time) {
    return '${time.hour}:${time.minute}';
  }

  void _encaminharDadosParaOutraTela() {
    HorariosScreen.processarDados(
      nomeCliente: _nomeController.text,
      observacoesCliente: _observacoesController.text,
      dataSelecionada: _selectedDate,
      horarioSelecionado: _selectedTime,
    );
  }
}